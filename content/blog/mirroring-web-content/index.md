---
title: Mirroring Web Content
author: dweekly
type: post
date: 2002-02-13T08:00:00+00:00
url: /mirroring-web-content/
enclosure:
  - |
    |
        http://downunder.com.au/mirrors/ms/funny.mov
        0
        video/quicktime
        
dsq_thread_id:
  - 533095526
categories:
  - Uncategorized

---
_originally posted to the Apache Development mailing list_

Hello! I apologize if this has been discussed in this fashion many times, but I have attempted to read around and wasn&#8217;t able to directly find any indication that it has been. Please flame me offlist for my naivite.

* * *

### **THE MIRRORING PROBLEM**

As a website&#8217;s popularity grows, it becomes increasingly desirable to have &#8220;mirrors&#8221; of the website located in various places, in order to spread the processing and bandwidth expense of serving a page across many servers and to reduce the path length traversed by a packet going from server to client. The Apache Group itself uses mirrors, as do the Qmail and Postfix projects, the Linux Kernel site, and innumerable other popular websites.

There are several ways to inform a client as to the availability of a file on alternate servers:

  1. **Click On It Yourself.**This approach, the one used by most Open Source project pages, involves a clickable list of mirrors being presented in the HTML body; it is assumed that a &#8220;kind&#8221; user will find a mirror instead of downloading from the main site. Some sites, like http://qmail.org/, somewhat enforce this usage pattern by prompting for a location before a user can engage the site. Some, like Apache, use a dynamic list of mirrors to reduce the probability that some poor singular mirror that was listed first will get all the traffic.This approach is nicely centralized and is easy to administer, but is a pain for the user. Cookies to remember a user&#8217;s preferred location might be useful in helping make localization a one-time effort and not a continuous one. This is also not a standards-based approach. Every website must go it on their own. Thankfully, this is not hard.
  2. **Use Clever DNS Servers**This is somewhat the IRC-server approach, and moreso the approach that Akamai adopted. Most largescale commercial websites use &#8220;clever DNS&#8221; servers that can field a reasonable guess as to what webservers are likely to be closest to you and to return their IP addresses. This requires no client-side intelligence or user interaction. The seamless, scalable, and elegant nature of this approach has made it strongly compelling for the commercial web. I don&#8217;t know what Open Source DNS software is capable of location-based IP issuance: I would love to hear of any.This approach is equally centralized but requires control over the DNS server, something that many small to midsized websites don&#8217;t have. Getting a &#8220;smarter DNS&#8221; into ISPs that did proximity-based IP address returns wouldn&#8217;t require even modifying MX records, and could be a real coup. But this approach also requires mirroring the site in its entirety.
  3. **Use HTTP Redirects**This approach is not used nearly as often as the first two. A script could be written to redirect a web browser wanting to download a given file to a specific mirror where file resides. This has the advantage of not requiring all files to be on all mirrors, or even the same set of files on all mirrors. This does require writing some (simple) new software to manage the connection redistribution; this could be an Apache module. One of its actions could be to simply let the request be served by the local host until some certain bandwidth/CPU/memory threshold was crossed, at which point it could begin dishing out redirects to mirrors likely to be near the requestor.This approach is more powerful than the above two (it&#8217;s seamless, but doesn&#8217;t require mirroring the whole site). It would work best as an Apache module, which would require control over the web server being used to service requests, but a user could theoretically change their entire site to be served by a CGI that could perform that same function. This would probably require changing the site&#8217;s layout and would involve a great deal of work on their part.
  4. **Use HTTP Headers**The next approach is to use two new fields in the HTTP response to a HEAD request: &#8220;X-Mirrored-By&#8221; and &#8220;X-MD5&#8221;. A sample HTTP request/response: 
    <pre>[client] HEAD /very/big.movie HTTP/1.1
    [client] Host: MovieServer.com
    [client]
    [server] HTTP/1.1 200 OK
    [server] Content-Length: 205392839
    [server] Content-Type: movie/quicktime
    [server] X-Mirrored-By: http://mirror.in.co.uk/movserv/the.movie
    [server] X-Mirrored-By: http://downunder.com.au/mirrors/ms/funny.mov
    [server] X-Mirrored-By: http://friend.in.co.tw/movies/big.movie
    [server] X-MD5: 5FD298A9782394C2</pre>
    
    This would enable the client to find the mirror closest to it and possibly even download the file simultaneously from multiple locations. The MD5 checksum and content length would ensure that the end result was correct, something that the other methods above don&#8217;t provide.
    
    This approach has not yet been implemented; I would like to bring it up for discussion with you, the Apache developers. It could be used today with setups that allow websites to control their own headers.
    
    I&#8217;ve reviewed the HTTP 305 Error Code, which seemed like it might be a good fit for this sort of thing, but I then discovered that only proxies are allowed to transmit that code.</li> 
    
      * **Use an Orthogonal Peer-To-Peer System
  
** 
  
        Finally, some recent companies, such as RedSwoosh, have begun rolling out technologies to intercept HTTP requests and attempt to service them on their own network, using the URL as a content key instead of a destination. These new-style networks have the advantage of not having to conform to existing client-server expectations in the HTTP world and can easily benefit from increased security, multipoint downloads, and so forth, often without requiring any changes at all to be made in the webserver.The downside is loss of definitive control over the locations from which a file is being distributed and the dependence upon systems that may not be either open or standards based and may only run on certain platforms.
      * **Use a Generic Index Into Orthogonal Systems
  
** 
  
        Bitzi, as an example, provides for XML tags that can specify various properties about a file. An intelligent client could do an HTTP HEAD on the web server, grab the MD5 or Tiger-Tree hash of the file to be downloaded, grab the Bitzi tag based on the hash, and query various P2P networks (Gnutella, Fastrack/Morpheus/Kazaa, AudioGalaxy, etc.) for the file as reported by users of Bitzi. This is a much more ad-hoc situation and perhaps better suited for users producing or mirroring informal rich media files. The server-side implementation would only require sending back an MD5 hash of the file, however.</ol> 
    
    * * *
    
    Thoughts? This certainly does cut out a good deal of work for the Open Source community. It&#8217;s quite likely that there already exists software to do most of what I&#8217;ve discussed here, but that I&#8217;m simply unaware of it. The Apache module to do conditional redirection is the one that I&#8217;m currently most excited about.
    
    Please upbraid me now.
    
    Yours,
  
    David E. Weekly
