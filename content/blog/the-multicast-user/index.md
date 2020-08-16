---
title: The Multicast User
author: dweekly
type: post
date: 1999-11-01T20:09:48+00:00
url: /the-multicast-user/
categories:
  - Uncategorized

---
## what is multicast?

A very sleek, hip, and powerful word. Multicast technology, about a decade old, enables a computer to &#8220;broadcast&#8221; a single stream over a network and have the network copy the stream as required. So for instance, if I was broadcasting a concert from San Francisco and had 50 people listening in from the Netherlands, I&#8217;d just send out one stream. The routers would pass along this single stream across the US, under the Atlantic Ocean, through England and France and and only split the stream to make copies for each listener when the data had actually reached the Netherlands. Here is an illustration blatantly ripped from Jon Crowcroft&#8217;s excellent online reference [Internetworking Multimedia][1]:

<center>
  <img src="http://david.weekly.org/writings/multicast.gif" alt="[multicast diagram]" width="574" height="218" />
</center>

The network itself handles the distribution.

The current model is much less efficient: the server is required to push out a unique stream itself &#8212; the routers only know how to carry a stream to a single endpoint. This is bad for everybody. Take a look at the trans-Atlantic link in the above example: it is now carrying 50 copies of the exact same stream at the exact same time. This is a waste! With multicast, a computer only needs to push out one stream, and the routers, while more intelligent, never need to move redundant data.

You&#8217;d think that it would be obvious that people broadcasting content to lots of people would want to use multicast; and you&#8217;d be right. The problem is that multicast _applications_ have not developed much since their inception in the early 1990&#8217;s. I had to look pretty hard to find multicast-compatible programs, and the ones that I found were primarily designed to run on Sun Solaris and were poorly implemented for Windows. They ran awkwardly at best and simply didn&#8217;t operate correctly the vast majority of the time. I downloaded a plugin for Winamp to allow me to listen to multicast MP3, but it would only play for a few seconds (once as long as a minute) before choking and crashing Winamp.

Multicast capability exists on the vast majority of routers out there today but is simply not turned on. ISPs cite a lack of compelling multicast applications, and application developers refuse to integrate multicast because of a lack of ISP support. Ultimately, multicast capability must be integrated into rich-media clients and servers in order for it to take off.

Unfortunately, there is another barrier: there are only so many multicast addresses right now. Making the analogy to radio broadcast, there is only so much space on the dial: multicast uses an IP address, just like a web server, and there are a limited number of IPs avaialble for multicasting. The obvious solution is to make a different, much larger address space, and this problem has been duly solved by IPv6, the successor to the current Internet machine address mechanism used today, IPv4. You may have seen IPv4 addresses. They look like**127.66.32.14** &#8212; four numbers between 0 and 255. While this may seem like more than enough possible addresses (4 billion, in fact), there are getting to be a lot of computers on the Internet, and there are many companies that have allocated large, inefficient chunks of addresses to make things easy to manage. (Stanford for a time owned all addresses starting with**36.**!) IPv6 solves this with an address space that is much, much bigger. IPv6 specifies not four, but sixteen numbers between 0 and 255. This would let us address **3.4 x 10<sup>38</sup>** unique addresses &#8212; more than enough to give several thousand IP addresses to every gram of matter on this planet. IPv6 also allows for Quality of Service (QoS) that lets the network treat urgent data (e.g., a teleconference or remote surgery) differently from less urgent data (e.g., email) and operate more efficiently.

Much to everyone&#8217;s dismay, IPv6 has been very slow to roll out. Defined years ago, we&#8217;re only now beginning to see the infrastructure for doing IPv6 emerge: the only way to get IPv6 to work under Windows is to download an alpha driver from [Microsoft Research][2] &#8212; and this only works under Windows NT! IPv6 addresses only started to be allocated months ago. Clearly this technology is off to a slow start.

But all&#8217;s not yet lost: encourage your ISP to enable multicasting and adopt IPv6-capable routers. Encourage OS & application vendors to include IPv6 support (Linux has had it for a while!) and to explore multicast alternatives to unicast applications. And maybe, just maybe, we can start using the power of multicast to empower small broadcasters.

<span style="color: green;">ADDENDUM:</span> some readers commented that scaling multicast to deliver reliable performance can be difficult: if you are broadcasting to 100,000 users and 1% fail to receive each packet correctly, you have to deal with 1000 retransmissions for every packet of data you send, introducing inefficiency and overload. This problem has been solved elegantly by several groups. Interested readers may want to investigate [SRM (Scalable, Reliable Multicast)][3], [RMTP (Reliable Multicast Transport Protocol)][4], and [Search Parties][5]. A comprehensive list of Reliable Multicast papers can be found [here][6], although many of the links are broken. The basic concept in many of these papers is to do some forward error-correction (to allow for error recovery on the receiving end without having to request more information from the server) and combining NAKs (namely, requests for more information from hosts who did not correctly receive it) in subband retransmissions to just multicast the correction to that group of users. These mathods have proved to be quite effective at allowing for both scalable and reliable multicast in a manner **far** more efficient than unicast.

 [1]: http://www.cs.ucl.ac.uk/staff/J.Crowcroft/mmbook/book/book.html
 [2]: http://research.microsoft.com/
 [3]: http://www.aciri.org/floyd/srm.html
 [4]: http://www.bell-labs.com/project/rmtp/rmtp.html
 [5]: http://www.cs.berkeley.edu/~amc/research/search-party/
 [6]: http://research.ivv.nasa.gov/RMP/links.html