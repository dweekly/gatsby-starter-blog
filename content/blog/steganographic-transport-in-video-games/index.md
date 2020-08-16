---
title: Steganographic Transport In Video Games
author: dweekly
type: post
date: 2002-08-10T07:00:00+00:00
draft: true
url: /?p=97
categories:
  - Uncategorized

---
Steganography is the study of how to tell someone something without anyone else even knowing that anything was communicated. This is different from cryptography, where a third party can tell that two people are talking, but has no idea what they&#8217;re saying.

The difference, perhaps sounding somewhat inane to those first hearing it, is an important one: if you are participating in a peer-to-peer network such as Gnutella, and the RIAA or MPAA find out, you could be personally subject to legal prosecution for contributory infringement (i.e., helping others find free music). It doesn&#8217;t matter if you never downloaded a single MP3; they can still haul you off to jail. Consequently, it should be obvious that it would be desirable to hide not just the specifics of the peer traffic, but the fact that it exists at all.

So how can one just hide this stream of information? Simply encrypting it won&#8217;t help: we&#8217;re clearly transmitting to well-defined ports and receiving incoming connections on well-defined port. It would be cake for a network admin to see that we were participating. What we need to do, then, is to look like a perfectly ordinary network user, sending and receiving exactly the same sort of packets at the same sort of times as someone who wasn&#8217;t participating in the peer network.

The classic answer for this has been to use pictures. Pictures are large and their compression is lossy, so it&#8217;s easy to tuck new information into a picture without making it obvious that something is &#8220;in&#8221; the picture. Some American media hype post-Spetempber 11th was going on about how Osama was using directives steganographically embedded in pornographic images, but I (and many others) think that&#8217;s unlikely.

Pictures don&#8217;t make an ideal steganographic transfer media largely because most people don&#8217;t upload them that often. There \*are\* webcams that stream pictures and such, but they aren&#8217;t hugely common (i.e., > 1 million US users). People continuously uploading large images would like quickly be put under suspicion.

What we need, then, is a medium in which users are regularly uploading large quantities of information and that is sufficiently popular as to dismiss any suspicions. When looked at in this way, the answer becomes nearly obvious: online games.

Modern interactive games like Castle Wolfenstein and Counter Strike consume vast amounts of bandwidth, often averaging over 100 kilobits per second. This gives us a great deal of &#8220;headroom&#8221; into which we can stick coded messages.

The main barrier to effective steganography is finding a &#8220;carrier&#8221;. What do I mean by this? Well, we first have to dive a little deeper into steganography.