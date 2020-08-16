---
title: Why IPv6 Won’t Be Here By 2005
author: dweekly
type: post
date: 2003-10-27T08:00:00+00:00
url: /why-ipv6-wont-be-here-by-2005/
categories:
  - Uncategorized

---
_This message was posted on October 27, 2003 to a mailing list in_ _response to a post that claimed that IPv6 would be widespread by_ _2005 due to an IPv4 address shortage. Given that 2005 has come without_ _IPv6 having taken off, this post feels vindicated in its conclusion._

NATs, unfortunately, made a need to switch over to IPv6 wholly unnecessary. Such a switchover will probably not happen for at least another ten years. Even ten years ago, we were &#8220;running out of&#8221; IPv4 space due to incredibly inefficient allocations using the &#8220;class based addressing&#8221; method &#8211; by which your network was deemed to either to likely possess 253 computers, 65,533 computers, or 16,777,213 computers. A specific network was identified by 24, 16, or 8 bits. (The more bits it takes to identify a network, the more networks can exist but at the expense of having fewer unique addresses per network.)

This was quickly determined to be an inordinate waste of addresses and as early as the early 90&#8217;s folks were predicting we&#8217;d rapidly run out of addresses. So class allocations changed a little, and instead of giving an organization with 1000 computers a class B (with 65,533 useable addresses), they&#8217;d give them four class C&#8217;s (with 1012 addresses). This helped stem the tide for a bit and arguably saved the Internet&#8217;s ass, but it was clear that a more elegant system for identifying networks was needed.

After some backbone technology re-architecting, a new scheme called Classless Internet Domain Routing, or CIDR was introduced, which allowed bit-sized granularity, meaning that a network was identified by exactly as many bits as you needed. Your network could possess 13 computers, or 16,381 computers, and the system could deal with that efficiently. CIDR definitely also helped save the Internet&#8217;s ass. But the addresses kept on coming; that dang Internet was getting popular very quickly! Pundits started talking about The Great IPv6 changeover, despite the fact that less than one person in 100 on the Internet had an IPv6-enabled operating system.

Then came NATs. While Network Address Translation had been used in many environments, it hadn&#8217;t really taken off tremendously. Then Linksys released a rather affordable cute little blue box. This piece of hardware let home users plug in several computers to the blue box, configure it with a web interface, jack in their cable/DSL connection and suddenly be sharing Internet access easily with everyone in the house, using one IP address and so fooling the ISP into thinking that there was only one computer using the Internet (many ISPs either don&#8217;t permit or don&#8217;t have the infrastructure to give out multiple addresses to a customer). These NATs had a secondary benefit, which was that by default, all incoming connections from the outside are dropped on the floor. I&#8217;m not sure Linksys had such &#8220;firewalling&#8221; in mind when originally designing the device &#8211; it&#8217;s purely a practical issue. I mean, if someone says to a NAT &#8220;here&#8217;s this piece of information&#8221; &#8211; to who which of the four connected computers should the NAT send it? By default, the NAT will give up and just drop the sorry packet. This means that when you&#8217;re behind a NAT, you&#8217;re protected from a whole class of Internet attacks. This realization further drove adoption.

Companies with low IT budgets realized that they wouldn&#8217;t have to buy extra IP addresses from their ISP (which often came at a premium) and that they could have simple firewalling without a complex configuration. Both companies and people could not see the inherent value in having each of their computers have an Internet-deliverable address, and there was real value (protection) to be had in NOT be addressable from the Internet.

This, again, saved the Internet&#8217;s ass. Instead of an organization of 1000 needing a class B, wasting hundreds of thousands of IPs, or even four Class Cs, this organization now only needs a single IP address to cover all of its desktops. Now instead of thinking about IP addresses as computer addresses, they have started to become network addresses,
  
which is to say, the WHOLE 32 BITS is the network identifier. While I am sure that there are rapidly going to be more than four billion network-connected devices (which would fill the entire IPv4 address space), I&#8217;m not convinced that there are going to be more than, say,
  
100 million individual \*networks\* in the next 5-10 years. The transition to NATs is going to completely obviate a near-term requirement for a changeover to IPv6.

There&#8217;s only one problem: this destroys one of the fundamental
  
principles upon which the Internet was constructed &#8211; &#8220;Every node is
  
born equal.&#8221; In theory, the servers that run HotMail should be no
  
different from the computer no your desk. Sure a HotMail computer is
  
probably rackmounted next to dozens of other servers, and probably has
  
a faster Internet connection, but your computer should be able to run
  
a slow version of what runs at HotMail. This is the way that networks
  
used to work and what enabled everything from Yahoo and Google&#8217;s
  
development, running off of nodes in dorm rooms, to modern P2P
  
networks like RedSwoosh and Kazaa. None of these could operate
  
properly in a NAT environment, because the outside world would have no
  
way of making a spontaneous connection to a sever behind the NAT. If
  
the whole of Stanford campus had been behind one IP, countless
  
companies could not have sprung up, running custom web and email
  
services in dorm rooms.

This rising dichotomy, coupled with the dramatically rising
  
download/upload ratios of broadband (my current cable modem can
  
download 10x faster than it can upload!) means that there are now
  
really two classes of Internet citizens &#8211; ones with an IP address and
  
a synchronous connection (servers, broadcasters, &#8220;true nodes&#8221;), and
  
ones behind a NAT with very little upload capacity (consumers /
  
plebians). This may rapidly turn computers into advanced televisions
  
instead of interactive information sharing devices. Consider the
  
inequality today &#8211; most broadband users can listen to Internet radio
  
but can&#8217;t publish their own streams.

P2P also fundamentally stops working well with high download/upload
  
ratios. On a P2P network, the aggregate download speed is equal to the
  
aggregate upload speed. This means that if everyone on the network can
  
download ten times faster than they can upload, downloads off of a P2P
  
network will be ten times slower than downloads off a server
  
directly. This means that P2P CDNs cannot really succeed, which would
  
be a crying shame.

IPv6 could resolve the addressing concerns, if not the disparity in
  
connection speeds. I personally think it would be great, especially
  
considering how it could potentially bring multicast to the
  
masses. But the adoption is just not there. I run a colocation site
  
and we&#8217;ve been asking our upstream ISP, who is one of the world&#8217;s
  
leading IPv6 providers (and who offers a free IPv6 tunnel broker), if
  
they would permit routing of IPv6 traffic over our existing
  
connection. &#8220;Any moment now&#8221; they&#8217;ve been saying. So deployment is
  
nearly non-existant. Implementations are, too &#8211; Microsoft only offered
  
an alpha-quality IPv6 stack for Windows 2000 from an obscure location
  
on the Microsoft Research site. The fact that it didn&#8217;t come standard
  
on Windows XP should speak volumes; but it is available on the
  
WindowsUpdate site to users of XP. (The only thing that bugs me is
  
that now it does TWO DNS resolves for every name &#8211; first for the AAAA
  
record, then for the A record!) Windows98/ME and Windows 2000 users
  
almost assuredly can&#8217;t do IPv6, and only Windows XP customers who have
  
upgraded can, so I&#8217;m guessing that it&#8217;s still less than 1% of the
  
desktops out there that can do IPv6.

All of this is a long way of saying &#8220;Don&#8217;t hold your breath for massive IPv6 deployment by 2005.&#8221; 🙂