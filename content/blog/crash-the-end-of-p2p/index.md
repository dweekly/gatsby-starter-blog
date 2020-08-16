---
title: Crash – The End of P2P
author: dweekly
type: post
date: 2000-12-17T20:42:48+00:00
url: /crash-the-end-of-p2p/
categories:
  - Uncategorized

---
_exclusive for [Digital Mogul][1]_

KaFOOM!

Wasn&#8217;t it so exciting, in 1999, to see online file trading taking off in a massive way? To see [Shawn Fanning][2] so adored by the press and dozens of music exchange services popping up, like [CuteMX][3], [Ohaha][4], [Freenet][5] and [Scour Exchange][6]. No longer was music trading a covert and elite operation &#8211; grandma was using Napster to go and grab those [Tom Jones Band][7]MP3s and Johnny was clicking away and consuming album after album of [Pearl Jam][8], [Nirvana][9], [Beck][10] and [Zepplin][11]. Those were the days&#8230;

We&#8217;ll have to relish such memories, since soon that may be all we have of them. The rocket ship of free online trading is rapidly coming to a crash landing. But why? How could I make such a grim claim when there are tens of millions of Napster users downloading away, right now, and even as I write these words, digital music is pouring en masse down modems, ISDN lines, DSL, cable modems and T1s?

One needs to look a little bit more closely to see what is wrong. First off, Napster&#8217;s [recent deal][12] with Bertelsmann makes sense. They will, before too long (two years, absolute tops) shut off the free component of their service and start charging for a subscription service. Why? Because there are two ways to get files to a user&#8217;s hard drive: you either have a centralized service or a decentralized service. Napster tried to create a third category, which I&#8217;ll call &#8220;arbitrated peering.&#8221; (They introduce people wanting to share files.) Unfortunately for them, it still came down to having a bunch of centralized services for which they were responsible. This makes them vulnerable legally (as per their current lawsuit) and financially (they have to pay to run those servers!). They can get over both hurdles by striking deals with the major labels, charging for services, and &#8220;becoming legit.&#8221; In short, no more free Napster. Fiscally, what they&#8217;re doing now is sheer insanity. Have you ever paid a dollar to Napster? Have you ever even seen any Napster-hosted advertising? And yet how much value have its users derived from its existence? Fundamentally, businesses need to make money. Those dot coms that hadn&#8217;t already learned that are &#8220;getting a learning&#8221; from their investors, and from the public market.

Okay, so if Napster goes under or becomes &#8220;legit,&#8221; what about other alternatives? Most of the Napster-style arbitrating peers have gone the same way as Napster. Scour Exchange first fired nearly all of its engineers, then shut down the service. CuteMX was off for a year, briefly came back on, and is now off again, this time for good. IMesh has disappeared into obscurity, and Ohaha never left the ground. None of these companies found a way to make money, feel free to their users, and to appease the record labels and movie titans. I applaud their efforts, but they were up against a nearly impossible task.

One of the main problems that have faced such companies is that &#8220;being legit&#8221; is expensive, complicated, and in some cases, impossible. In a centrally-arbitrated system, for instance, the central node doesn&#8217;t pass any of the music files itself, making it hard for entities like Napster to find out authoritatively who is copying what, simultaneously making it difficult to block unauthorized copying and to compensate organizations whose material was copied. So companies looking to set up a long-term viable business model must have an extraordinarily complex technology infrastructure to manage asset tracking, content management, deployment architectures, digital rights management, etc.

Just today at the [Streaming Media West Conference][13] in San Jose I strolled through dozens upon dozens of companies each of whom claims to be the best solution for their particular niche in this infrastructure: one company had even gone so far as to make a graph showing all of the components required for a business-viable, legal streaming infrastructure. There were, at my rough count, about two dozen components, of which the company was claiming to be able to implement a handful. It is almost ironic that there are so many companies with which one must partner and license products and establish relationships as to make actually providing legal, streaming content nearly impossible. The very infrasture established to help streaming companies get off the ground has gotten so complicated as to prohibit their founding. So it&#8217;s going to be a while before we see a long-term, successful, legal and centralized music service.

&#8220;Ah!&#8221; some hackers may cry, &#8220;but what about pure peered networks?&#8221; These networks, like [Gnutella][14] and [Freenet][5], have been highly touted as the solution to filesharing: since every client on the network is also a server, no central entity is legally or financially responsible for the network&#8217;s existence. No need for those dozens of companies! Tadaaa!

Unfortunately, these networks tend not to scale well, for the very reason that instead of searching for a file from a central corporation with powerful servers in a colocation facility, you have to ask a whole network of people if they have the file you&#8217;re looking for; then they ask their peers, and so forth, seven levels deep. Pretty soon, just to be connected to the network in a slight capacity you have to be transacting thousands of queries a second, passing some of them on, keeping track of who sent whom what, etc., and your computer quickly bogs down, to say nothing of your modem or even ADSL connection. And this is before people are even uploading files from your computer &#8211; it&#8217;s just the cost of being on the network at all.

Consequently, Gnutella is effectively unusable for modem users currently. Searches take mind-numbing amounts of time, and one&#8217;s Net connection rapidly fills with Gnutella administrative and request packets. Even for users with very high-speed network access, such as the 100mbps taps in Stanford dorm rooms, the experience has slowed to be less than wholly compelling and taxes the computer enough to make other work (such as reading email) difficult. Even valiant attempts to moderate the unnecessary traffic, like [Clip2&#8217;s Gnutella Reflector][15], have not been successful in bringing the network up to a comfortably useable level. And with more people piling on each day, the situation is going to get worse, not better. Attempts to build a next-generation Gnutella, once called [GnutellaNG][16], now gPulp, have been waffling and degrading and it&#8217;s unclear if there will ever be such a product, and if it does materialize, if this product will actually even be a filesharing tool of some sort.

Freenet has been talked about quite a bit as an example of a next-generation peer-to-peer network, but has yet to really take off. While its technical design is excellent, very few people are actually running it: there aren&#8217;t yet any easy-to-use Freenet clients or servers, and it&#8217;s unclear if any may materialize in the next year. Even if Freenet does become popular, it&#8217;s equally unclear if it will be able to scale better than Gnutella.

So what does that leave? Not much, unfortunately. While a vast number of companies are starting up in the peer-to-peer (now dubbed P2P by investors who feel an urgent need to categorize every technology as &#8220;an x2y play&#8221;) space, most are focused on (ready?) B2B P2P &#8211; that is to say, using peer technology to lend a hand to administrators in the workplace, doing everything from distributing the spare storage space or CPU cycles on corporate computers to making sure that anti-virus updates are spread as quickly as possible. After all, that&#8217;s something that can be sold: something that a company can be started on. How do you make money (while avoiding getting sued) enabling people to illegally exchange music files? It seems that nobody has arrived at a good answer to date, and the non-profit/academic attempts to date, such as [Jungle Monkey][17], have been underwhelming.

Now that I&#8217;ve dashed your hopes for free music on alternative systems, let me return to Napster. Just in case you still held on to a glimmer of hope that Napster could win their court battle and would, out of the goodness of their corporate heart, keep the free service up and running, there are immediate problems that those who share MP3s on the service are going to run into. One of them is named [eMusic][18].

EMusic has been selling online digital audio for longer than anyone else. Right now, they sell more MP3s than anyone else &#8211; a lot more. In [their most recent quarter][19] they sold their three millionth song and made $1.5 million on downloadable song revenues. They&#8217;re selling a lot more MP3s than anyone else out there. The sad part is that they are often overlooked by the media and still aren&#8217;t anywhere near profitable: they lost $8 million last quarter. Their stock price is below $1; at the time of this writing it&#8217;s fifty cents. They&#8217;re understandably frustrated that amongst all of the hype and hoopla surrounding the glamorization of free online trading, and the wrist-wringing of those looking to make money, that a company with a reasonable and potentially profit-capable model should languish unadorned and left to die.

Well, they&#8217;re not dying quietly. On November 21st, they released [a piece of software][20] that finds users on the Napster network who are trading eMusic files and sends them an instant message asking them to stop sharing said files. If they don&#8217;t comply in 24 hours, eMusic notifies Napster, which then disables that user&#8217;s account. If the user persistently tries to keep trading eMusic&#8217;s files under different aliases, eMusic will contact the user&#8217;s ISP and have their Internet access terminated. They haven&#8217;t sued Napster itself yet, but, as Gene told Reuters, &#8220;It&#8217;s an option we&#8217;re considering.&#8221;

Ouch.

EMusic, and companies like it, are only too eager to hasten the death of an industry that has begun to wean people off of the idea of paying for music. In their press conference, they indicated that they&#8217;d be willing to apply their software to communities outside of Napster and to license their &#8220;service&#8221; to other record labels. With free music communities out of the way, they can get back on track to selling MP3s and return to &#8220;business as usual.&#8221;

With programs like theirs scaring users away from sharing their music on public networks and with Napster and other music exchange networks under heavy fiscal and legal pressure to switch to a pay-for-play model, it&#8217;s unclear how much longer the free music free-for-all will last before tumbling down to the grim Earth.

 [1]: http://www.digitalmogul.com/
 [2]: http://www.time.com/time/magazine/article/0,9171,55730,00.html
 [3]: http://www.cutemx.com/
 [4]: http://www.ohaha.com/
 [5]: http://freenet.sourceforge.net/
 [6]: http://sx.scour.net/
 [7]: http://www.gutrecords.com/tomjones/
 [8]: http://www.pjvault.simplenet.com/mp3.html
 [9]: http://www.google.com/search?client=googlet&q=nirvana%20mp3
 [10]: http://greycat.yi.org/mp3/Beck/
 [11]: http://www.gnute.com/artist/artist=led%20zepplin
 [12]: http://news.cnet.com/news/0-1005-200-3345604.html
 [13]: http://www.fconline.com/west/
 [14]: http://gnutella.wego.com/
 [15]: http://dss.clip2.com/reflector.html
 [16]: http://gnutellang.wego.com/
 [17]: http://www.junglemonkey.net/
 [18]: http://www.emusic.com/
 [19]: http://www.emusic.com/about/pr/pr133.html
 [20]: http://www.emusic.com/about/pr/pr138.html