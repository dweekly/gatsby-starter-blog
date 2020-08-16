---
title: Gnutella and the State of P2P
author: dweekly
type: post
date: 2001-02-03T08:00:00+00:00
url: /gnutella-and-the-state-of-p2p/
categories:
  - Uncategorized

---
_written for the pho list_

To be honest, Gnutella is not doing very well.

There are about 2300 gnutella hosts on the network accepting incoming
  
connections [statistic from [LimeWire.com][1]] that are part of the &#8220;big
  
cloud&#8221; (i.e., public network &#8211; it&#8217;s possible to set up independant
  
trading &#8220;clouds&#8221; on gnutella, too.) One interesting consequence of
  
this is that all of the public nodes are known and easily
  
harvestable. Since most nodes hooked up to gnutella are on high-speed
  
links whose IP addresses don&#8217;t change very often, unless you&#8217;re behind
  
a trusty firewall you may find yourself open to attack.

Gnutella prides itself on being a true peered network, but there are
  
less than a dozen centralized &#8220;hostcatchers.&#8221; Lacking these, the
  
network could not function. While it&#8217;d be easy to set up a new
  
hostcatcher if others were taken down, the fact of the matter is that
  
most gnutella programs come preprogrammed to connect to a specific
  
hostcatcher. Just send off little letters to the ISPs hosting those
  
servers and you could defeat the majority of gnutella users and make
  
it a real pain for new users to join.

There are a wide variety of clients (a good thing), but most of them
  
suck. It&#8217;s not really fair to be that critical of the original program
  
or even the gnutella architecture, since all it was was a quick hack /
  
beta implementation on Justin&#8217;s part (who has been gagged by AOL). I
  
can&#8217;t imagine how frustrated he must be at people (perhaps like me)
  
railing at gnutella&#8217;s flaws and its lack of ease of use when what&#8217;s
  
out there is a prerelease developer beta that he&#8217;s unable to continue.

There&#8217;s a pretty good review of the clients out there at [LimeWire][2], but I have to say that [BearShare][3] is by far and large my favorite. It renders much more information and is much easier to use (IMHO) than any of the other clients.

But even with BearShare&#8217;s pretty and helpful UI, gnutella is not very
  
usable. The main reason is bandwidth. Just being connected to the
  
network (not downloading or uploading any files) is pushing about
  
100kbps of traffic onto the network, with bursts up to 250kbps. Most
  
cable modems are capped at about 128kbps of upstream traffic. Even
  
high-quality ADSL can&#8217;t usually push more than 100kbps or so, and
  
that&#8217;s already going to pretty much nuke your download capability
  
(ADSL is odd like that!). So just being connected to gnutella requires
  
you to be on &#8220;extreme broadband,&#8221; such as a work connection or an SDSL
  
line. This is again before you are actually uploading or downloading
  
any files.

There are other problems, too. Only one out of every ~15 search
  
results will actually be downloadable, and a good percentage of those
  
that do succeed are pretty slow (possibly because they are already
  
burning all of their bandwidth in simply participating on the
  
network). On napster, around 2 out of 3 search results are actually
  
downloadable, leading to an environment much more amenable to actual
  
usage.

On a deeper level, Justin&#8217;s gag on continued work on this project
  
means that this space will probably be pathetically without a true
  
leader. Sure, various figures pop up from time to time to try and
  
shepherd the gnutella development/user communities in various
  
directions (and are periodically mistaken as &#8220;the creators of
  
Gnutella&#8221; &#8211; as happened in the case of Gene Kan), but this really is
  
Justin&#8217;s aborted baby. Best, IMHO, to let it die and create something
  
anew to replace it.

I can assure you that that entity will not be gPulp (formerly known as
  
gnutellaNG, for Gnutella: Next Generation). For those of you not in on
  
the story, a number of people who had put together gnutella clones and
  
who understood some of the limitations of the original (unfinished)
  
gnutella architecture wanted to band together to create a
  
next-generation protocol and architecture that would provide a great
  
deal more robustness, speed, scalability, and flexibility. They
  
started talking, setting up a mailing list and website (at
  
[gnutellang.wego.com][4]) and passed around a lot of really great academic
  
papers on scalable peered systems (some of which are still sitting on
  
the message boards). But this group, since it was talking and not
  
coding, rapidly got very political. One member, Sebastien Lambla, who
  
had taken charge of the gnutellang website, spontaneously declared the
  
project renamed to gPulp and announced himself as the &#8220;gPulp
  
Consortium President.&#8221; Pretty silly, considering there wasn&#8217;t even an
  
attempt at consensus among the other developers. Sebastien proceeded
  
to turn gPulp into something different than a next-generation
  
gnutella, announcing that it would be a &#8220;resource discovery protocol&#8221;
  
(without actually specifying the mechanics of file transfer or other
  
peered solutions).

Sebastien, as if he wasn&#8217;t already making enough enemies, then decided
  
to set up gpulp.com/org/net and establish those as the new center. As
  
part of the move-over process he announced (and the announcement is
  
still on the gnutellang page) that he was going to be deleting all of
  
the message board content on the gnutellang website. Keep in mind here
  
that the discussions and resource links mentioned in those posts are
  
\*the only valuable thing that the gnutellang group has done to date\*. He redirects people to gpulp.tv as the new center for next-generation development. Yes, [go there][5]. No, you won&#8217;t be able to connect (as of 2/3/01 @ 1:30pm). Same with gpulp.com/net/org. Some new center, huh?

So Sebastien has pretty much singlehandedly defeated the possibility
  
of there being a half-decent next-generation gnutella. Any attempts to
  
critique him or to suggest that perhaps another course of action be
  
taken have been protested as an &#8220;attempt to split the community,&#8221;
  
since I think he believes he owns the whole of it. Ouch. Oh well. It&#8217;s
  
a textbook example of what not to do with an Open Source project, if
  
you want to learn from it.

[Ohaha][6] doesn&#8217;t seem to be going anywhere, but [iMesh][7] is still alive and kicking: there are 62,620 users online right now. Not bad, and about 30 times as many are on gnutella. Too bad there weren&#8217;t hardly any files actually available on the network and that those that were &#8220;available&#8221; (with five stars on &#8220;availability&#8221;) I couldn&#8217;t download. [Scour Exchange][8] is ([obviously][9]) no longer available. [CuteMX][10], which seems to be alternately [yanked][11] then [reinstated][12] every few months, is back with a new 2.5 version. [Freenet][13] is as obtuse and
  
inaccessible as ever. Excellent academic work is being done on [Jungle Monkey][14], but it&#8217;s not clear if a truly usable and popular client (and indeed, if indeed any Windows port) comes out.

Other than Napster, what other alternatives are out there and useable?
  
It seems that most of the more recent P2P plays in stealth mode are
  
targeted at &#8220;semi-centralized&#8221; models &#8211; this makes sense for
  
efficiency&#8217;s sake and also for creating a business model. An open
  
architecture with free implementations makes it difficult to make a
  
rollicking lot of money (or at least nobody has quite figured out how
  
this would work!). But P2P has people thinking, including people in
  
academia. A lot of theses have yet to be written and will undoubtedly
  
focus on efficient, decentralized systems.

I have a [vision][15] for two classes of systems. The first model is for
  
rich media and public access. Web pages, chunks of databases,
  
encrypted file backups, songs, movies, home videos and the like will
  
all flow through this system. There may be some &#8220;delegated&#8221; nodes
  
whose responsibility it is to help the network dynamically anneal to a
  
near-optimal dataflow by providing &#8220;global insight.&#8221; They won&#8217;t be
  
necessary, but they will greatly improve the efficiency of the
  
network. Hostcatchers are crude, first-generation implementations of
  
such delegated nodes.

The second class of system will be built for preservation of free
  
speech. It will only carry heavily encrypted, steganographically
  
embedded text. Through multiple layers, content from this network may
  
bubble up to the public network, thus allowing for not only anonymous
  
publication (mixmaster systems already do this) but for invisible
  
publication (i.e., your local network administrator doesn&#8217;t know
  
you&#8217;re publishing texts, even if she suspects it and is looking very
  
carefully at your network traffic). Text is the primary medium for
  
free speech and it is substantially easier to conceal than rich media:
  
even if you drape a blanket over an elephant, it&#8217;s pretty clear that
  
there&#8217;s still something there! Source code to &#8220;forbidden&#8221; programs,
  
memoranda on government abuses, etc. will all be published on this
  
network.

A number of people are working on the former class of systems, but
  
disturbingly few on the latter, which really, for all the hype of
  
other systems, is the one system that will guarantee free speech to
  
people.

But there is one key piece of the puzzle that needs to be in place for either system to work. It is absolutely necessary, and I&#8217;ve got to thank my roommate, [Dan Kaminsky][16], for pointing it out to me. The upload pipe needs to be in place. [Excite @Home][17] has capped all of their cable modems to 128kbps upstream (they used to be able to push 1mbps+!). [Pacific Bell][18] modified their ADSL algorithms to even more destructively remove download capacity as soon as there is any upload in progress &#8211; this allows them to &#8220;permit&#8221; servers and P2P traffic but make it impractical to actually run them. SDSL providers like [Covad][19]
  
([my provider][20]) are on [the verge of bankruptcy][21]. Alternate Internet access mechanisms ([1- and 2-way satellite][22], [fixed wireless][23], and [Ricochet][24]) all have a large amount of up/down disparity. Except for at universities and at really well connected workplaces, it may be
  
impossible to practically contribute much to a P2P system with all but the absolute most expensive ($1000+/mo) connections. Translation? P2P won&#8217;t be able to make it to the masses, other than leeching off of universities&#8217; connections if this trend keeps up.

Let&#8217;s hope the power companies move on [this whole fiber to the home thing][25], and fast. An 100mbps uplink in half the homes of America could prove the guarantee of free speech and an open, creative Internet for future generations. Lacking this, we may find ourselves restricted and floundering (as so [brilliantly expounded by Jaron Lanier][26]).

(Amazing how some things go full circle, ain&#8217;t it?)

 [1]: http://www.limewire.com/
 [2]: http://www.limewire.com/clientreviews.htm
 [3]: http://www.bearshare.com/
 [4]: http://gnutellang.wego.com/
 [5]: http://www.gpulp.tv/
 [6]: http://www.ohaha.com/
 [7]: http://www.imesh.com/
 [8]: http://sx.scour.net/
 [9]: http://news.cnet.com/news/0-1005-200-3730652.html
 [10]: http://www.cutemx.com/
 [11]: http://news.cnet.com/news/0-1005-200-2375170.html
 [12]: http://www.computeruser.com/news/00/11/08/news7.html
 [13]: http://freenet.sourceforge.net/
 [14]: http://www.junglemonkey.net/
 [15]: ../code/safex.php3
 [16]: http://www.doxpara.com/
 [17]: http://www.home.com/
 [18]: http://www.pacbell.com/DSL
 [19]: http://www.covad.com/
 [20]: http://www.speakeasy.net/dsl
 [21]: http://news.cnet.com/news/0-1004-200-4314119.html
 [22]: http://www.direcpc.com/
 [23]: http://www.sprintbroadband.com/
 [24]: http://www.ricochet.net/
 [25]: fiber.php3
 [26]: http://www.discover.com/feb_01/gthere.html?article=featnapster.html