---
title: Formats
author: dweekly
type: post
date: 2003-10-14T07:00:00+00:00
url: /formats/
categories:
  - Uncategorized

---
For protocols there&#8217;s Ethernet, TCP, IP, UDP, AIM (in ICQ, OSCAR, and TOC flavors!), Yahoo! Messenger, MSN Messenger, IRC, SOCKS5, HTTP, HTTPS, IMAP, POP3, FTP, Shoutcast, SSH, and Kazaa&#8230;and that&#8217;s just what&#8217;s running on my desktop right now! Then there are umpteen formats for data storage. MBX, PBX, DOC, MP3, AVI, WAV, MPG, and so forth.

In the Open Source world there are many different programs that each implement these formats in their own way. Ethereal, tcpdump, GAIM, and Jabber all try to implement the AIM protocol, which is often getting revised. When a change comes out, all the developers for the respective projects have to go rush out and update their software. Seems like an awful lot of duplicated effort, especially for the poor sap who comes along and wants to build a new product that interfaces with some fair number of protocols.

What if there were a better answer? What if there were a repository of structured information about every structured bitformat out there &#8211; from files to network protocols? A developer could just grab the latest structured descriptions that s/he needed (perhaps from a web service) and, together with a parsing library, be good to go for juggling ten different protocols in no time.

Such a repository could also be used to automatically generate documentation for these protocols, everything from simple RFC-like descriptions to interactive Flash webpages to walk you through the intricacies of the protocol. It would be a boon to Internet development and would effectively &#8220;factorize&#8221; duplicated work from different Open Source projects.

I might just try and put it together when I get some &#8220;free&#8221; time.