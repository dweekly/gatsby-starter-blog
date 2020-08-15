---
title: The Peril Of Using ETags In A Cluster
author: dweekly
type: post
date: 2003-04-24T07:00:00+00:00
url: /the-peril-of-using-etags-in-a-cluster/
dsq_thread_id:
  - 544920634
categories:
  - Uncategorized

---
Apache administrators: beware ETags if you have more than one webserver! (If you only have one webserver this article will not be useful to you.)

HTTP/1.1 added the header response &#8220;ETag&#8221; to allow a server to define its own way of uniquely identifying a point-in-time version of a specific file. The ETag is unstructured data; it&#8217;s just a string. The client, when rerequesting a document, submits an &#8220;If-None-Match&#8221;
  
header &#8211; if this header does not match the server&#8217;s ETag for the file, the server **must** retransmit the document, even if the HTTP/1.0 &#8220;If-Last-Modified&#8221; header exactly matches the &#8220;Last-Modified&#8221; date of the file.

This wouldn&#8217;t be so bad as-is if it weren&#8217;t for the way that Apache implements ETag support by default. The default setting is to incorporate the file&#8217;s last modification date, its current size, and its Unix inode. The first two make sense; I can understand wanting to make sure that both the last-modified time and the size match what&#8217;s on the client. But incorporating the inode leads to some very bad behavior on clusters, because a given file,
  
such as LOGO.JPG might have the same size and modification time on all of the webservers of the cluster, _**but the inode numbers are guaranteed to be different**_.

This means that if you have four web servers, three times out of four when a client connects to a random web server, the client&#8217;s stored ETag will not match the server&#8217;s and the server will needlessly be forced to retransmit the file to the client. As the number of web servers grows, the situation quickly approaches the point where effectively no caching is happening at all.

This is all compounded by a bug that I found in Internet Explorer 5 and 6, where if the downloaded file&#8217;s Last-Modified header matches the If-Last-Modified header it sent in the request, IE **doesn&#8217;t bother to update its cached ETag**. This means that even if you were to force IE to keep connecting to the same server (with the same inode for the file, etc.), once it&#8217;s made up its mind about an ETag it won&#8217;t change it until the Last-Modified time changes!

To fix this insanity, stick the following line in your Apache httpd.conf:

<pre>FileETag MTime Size</pre>

This will tell Apache to construct ETags based on only the modification time and the filesize; specifically, it prevents Apache from using the inode of the file in the ETag. Then touch all of your files to update your last-modified time. The next time a client goes to your page, they&#8217;ll re-download the files, since the last-modified time changed, but then they will have the &#8220;simplified&#8221; ETag (without an inode) and they won&#8217;t have to download the file again until the file actually next changes. Your pages will be much snappier! 🙂