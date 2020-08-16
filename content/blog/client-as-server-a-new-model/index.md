---
title: 'Client as Server: A New Model'
author: dweekly
type: post
date: 2000-04-10T19:49:35+00:00
url: /client-as-server-a-new-model/
categories:
  - Uncategorized

---
A new model is emerging from the Internet. It represents the culmination of years of incremental evolution in the structure of the network and the clients that feed upon it. It is based upon the same principles upon which the Internet was founded. It is this: the client is the server.

### darpanet

The Internet was created as a distributed network. Originally conceived as the Defense Advanced Research Projects Agency&#8217;s network (DARPANET), it was to be able to withstand a nuclear attack from the Russians. There could be no single point of failure in the system, and in this was it had to be different from most other networks yet conceived.

People previously had grown to the notion that there must be one, central arbiter that oversees all transactions on a network: a Mainframe. This model has an obvious weakness: when the Mainframe goes down, the whole system is unusable. Then again, if there is only a singular important point of failure, you could pay some people a lot of money to sit there and fix problems as soon as they happened (and hopefully to insure that the problems never happen in the first place). Unfortunately, it&#8217;s difficult to do this with regards to a nuclear bomb. So a different model was needed.

DARPANET provided this model by removing the server. It&#8217;s sort of like taking a model where everyone hands their mail to the post office, having people pass a letter to a friend, who passes it to their friend, who passes it to the recipient. While at first this might seem a little odd or maybe even a little inefficient, it means that it would be a lot harder for someone to stop a flow of mail to you (or a flow of mail in general). Instead of simply bombing the post office, now they&#8217;ve got to assassinate each and every one of my friends to prevent me from getting mail. Going back to the real world, there would be no single point of failure where the Russians could bomb to take down our communications.

It was a revolutionary as strange way of thinking about things. To this day, some people don&#8217;t understand it and ask questions like &#8220;where is the server that runs the Internet?&#8221; or even &#8220;where is the Internet?&#8221; It&#8217;s hard to understand that every server that is on the Internet is a part of the Internet.

### availability

These days, we are amidst an equally paradigmatic change which almost perfectly mirrors the first. Corporate servers, which distribute information and services to clients and participate in &#8220;e-business&#8221; need to not crash. Companies like eBay whose computers crash often get a bad name and lose billions of dollars on their company&#8217;s valuations, almost a worse fate than the actual millions of dollars in customer transactions that go out the door when servers die.

A quick fix is to employ a large number of servers configured exactly the same, such that if one goes down, traffic is quickly diverted to the others. Work is equally distributed amongst these servers by use of a &#8220;load balancer.&#8221; This solves a few problems, but what if your server cluster is in California and the network link from California to New Zealand is getting bogged down? While the long-term answer is to invest in a faster connection to New Zealand, the short-term way to solve this problem is to put a server cluster in New Zealand. This sort of rapid expansion can quickly get expensive to deploy and manage. Some bright kids from MIT figured this out a few years ago and cobbled together what is now one of the fastest growing companies out there: Akamai. (Hawaiian for &#8220;cool&#8221; if you&#8217;re wondering.)

Akamai has already gone through the trouble of buying several thousand servers and putting them in network closets all around the world. The idea being that you can spoon off delivery of the parts of your site that don&#8217;t change much (the pictures, the movies, etc.) to Akamai and they&#8217;ll take care of making sure that your readership can always quickly access your content. Cute idea. &#8220;Cool,&#8221; even.

Distributed services lead to higher data availability. The more machines that are distributing your content in the more places, the more people will be able to access your content quickly. It&#8217;s a straightforward idea. This notion of distributing work is also useful for distributing computation&#8230;

### processing power

It&#8217;s expensive to build really fast chips. It&#8217;s **really** expensive. To make a chip twice as fast as today&#8217;s high-end consumer chips costs about ten times as much money. That&#8217;s largely because today&#8217;s consumer chips are, pretty much by definition, as fast as it is possible to make them and have them still be reasonably cheap. If this wasn&#8217;t the case, another company would have come along and made reasonably cheap, screaming fast processors and have swept the market away. But the tight competition in the chip manufacturing business has kept the &#8220;bang for the buck&#8221; ratio screaming up through the ceiling, much to the delight of consumers.

It&#8217;s important to note that making fast chips is expensive, because if I want ten times the processing power that comes in a top-of-the-line consumer PC, the best way to do that and save your money is not to buy a machine that&#8217;s ten times faster, it&#8217;s to buy ten top-of-the-line consumer PCs. People have understood this general concept for a long, long time: wire together a bunch of processors to get a very, very fast machine. It&#8217;s called &#8220;Massive MultiProcessing&#8221; (MMP) and is pretty much how all of the supercomputers of yore (and of today!) work.

The recent concept is that it&#8217;s possible to do this with off-the-shelf PCs. Recently, software (such as [Beowulf][1]) has been developed to make it very easy to make a cluster of PCs act like one very fast PC. Sites that previously had deployed very expensive custom supercomputer systems are [actively investigating][2] using massively distributed commodity hardware to serve their computing needs. That would be remarkable as-is, but this concept of distributing computing cycles has gone even further than clumps of commodity hardware: it&#8217;s gone into the home.

### seti @ home

For roughly the last forty years, there has been a serious and conscientious effort to search for intelligent life in the universe by listening for patterns in radio transmissions. The process of analyzing incoming radio transmissions for patterns such as those that might be emitted by intelligent life forms is mind bogglingly difficult, requiring vast numbers of computations. While privately funded, the [Search for ExtraTerrestrial Intelligence][3] didn&#8217;t have enough money to process all of the data that they were getting. They did, however, have a sizeable fan base. (A number of people on this planet think it would be pretty cool / important to discover intelligent life out there.) So what did they do? They distributed the work.

Some clever programmers put together the software used for analyzing the data returned by the Arecibo antenna (the largest radio receiver on Earth), put some pretty graphics on it, got it to act as a screensaver, and put it on the web. Consequently, several hundred thousand people downloaded it and ran it as their screensaver. While they&#8217;re away from their computers, this pretty screensaver crunches through vast quantities of data, searching for patterns in the signals. The SETI project (as of this writing) in this way has a &#8220;virtual computer&#8221; that is computing 13.5 trillion floating-point operations per second, thanks to the people running the &#8220;screen saver.&#8221; Individual computers can be used to distribute mathematical work!

(I feel I should also mention [distributed.net][4], which spends its time using people&#8217;s computing power to crack cryptography codes. Their &#8220;virtual computer&#8221; is currently cracking a 64-bit cipher known as RC4 at the rate of 130 billion keys per second.)

### data services

So it&#8217;s now clear that it&#8217;s advantageous to distribute computation and the serving of data across as many computers as possible. We&#8217;ve seen how a few projects have distributed computation across end users, but what projects have distributed data services?

[Napster][5] is one of the first and best examples of end-users acting as distributed servers. When you install Napster, it asks you where your MP3 files are. You tell it and it goes out and makes a list of what MP3 files you have, how long each song is, and what quality the recording is. It then uploads this list (but not the songs) to a central server. In this way, the central server has a whole bunch of lists: it knows who has what music of everybody who is running Napster. You can ask the server who has got songs by Nirvana and then contact those other users (while your Beck tunes are possibly getting served to some Scandinavian with a predilection for American music). This model allows for information (in this case, MP3 files) to be rapidly and efficiently served to thousands of users.

The problem with it is both technical and legal: there is a single point of failure: Napster&#8217;s servers. While there is more than one server (the client asks a &#8220;meta-server&#8221; what server it should connect to), they are all owned by Napster. These servers unfortunately do not share their file lists between each other and as a result, you can only share files (and see the files of) others connected to the same server that you happen to have connected to. Napster is currently being sued by the RIAA for acting as a medium for distributing illegal MP3 files. While it is true that Napster can be easily used for illegally distributing MP3 files, they themselves don&#8217;t actually copy the bits for users: a bit more like acting as a Kinko&#8217;s that happens to be used by subversives than actually making MP3 copies themselves.

If you are a Napster user, you should be worried about this lawsuit, because if the RIAA succeeds, they will probably want to come and shut down Napster&#8217;s servers, thus theoretically shutting down the whole Napster network. In short order they could quickly close down any Napster clones due to the legal precedent that the anti-Napster case would set. Boom. Game over, no more illegal music.

Theoretically.

### a virtual internet

The RIAA mentality is one and the same of the Russians of yesteryear: a desire to stop the flow of information through the network. The answer to the Russians is one and the same as the answer to the RIAA: a completely distributed system. If every client on the network was connected to a handful of other clients, each of which in turn connected to others like some apocalyptically enormous online incarnation of Amway, then every person could have some connection to other people through a chain of mutual acquaintances. It&#8217;s Six Degrees of Freedom. (There exists a theory that says that on average you know someone who knows someone who knows someone who knows someone who knows someone who knows anyone in the world. That is to say, you are about six degrees from every human on the planet.)

This is a &#8220;virtual Internet&#8221; of sorts where links are not physical (a wire from you to me) but logical (e.g., I know you). Data flows through this &#8220;web of friendship&#8221; in such a way as it looks like you are only talking with your friends, when really you are talking to your friends&#8217; friends, and so forth.

### gnutella

The same rebellious college hacker genius who created the fabulously popular MP3 player, WinAMP (and was subsequently bought out by America Online, now America Online-Time/Warner-Netscape-EMI-And-Everything-Else-But-Microsoft) happily hacked out a program that allows for the free exchange of just about any kind of file over such a peered network. Unfortunately, his bosses discovered it halfway through development and quietly tried to erase the fact that the renegade project had ever existed in the first place. The name of the program? Gnutella. (Named after the [delicious chocolate spread, Nutella.][6])

Since there&#8217;s no central server around which Gnutella revolves, AOL&#8217;s shutdown of the project didn&#8217;t actually stop Gnutella from working. A growing user base of several thousand souls (myself included) uses the product on a daily basis to share files of all types, from music to movies, to programs. At last check, there were about 2200 people using it, sharing 1.5**terabytes** of information. Wow.

There&#8217;s no way to shut it down. There is no organization to sue to stop it. There is no server to unplug that would bring the network tumbling down. Because as long as at least two people are running the software, the network is up and running.

### freenet

There exist even more advanced projects in the works that will build upon these notions to create an even more powerful incarnation of a peered network that incorporates notions of perfect anonymity, trust, secrecy, realtime communication, and even banking. [Freenet][7] is perhaps the furthest along in this, although it has a very long way to go as of this writing. If you&#8217;re interested you can read about my own scheme for a [Secure + Anonymous File EXchange][8].

### the future net

Akamai has shown that it is clearly advantageous to have content distributed by as many nodes as possible: companies are willing to pay good money to have their content on thousands of servers all over the world. Gnutella is showing that it is possible to create distributed networks that cannot be shutdown, even in the face of legal and technical opponents. Napster shows that such networks can become popular and that people are willing to act as servers. Seti@Home shows that people will even allow others to use their computing power for a &#8220;greater good.&#8221;

What is enabling this now? Well, computers are unsurprisingly getting faster every year. The average desktop that&#8217;s sold to Joe User for doing word processing, email, and web browsing can, when properly configured, deliver hundreds of thousands of email messages a day, serve millions of web pages, route Internet traffic for tens of thousands of users, or serve gigabytes of files a day. (Joe probably isn&#8217;t aware of this and will still kick it when Word takes five minutes to load.) His hard drive could store 100,000 websites each having ten or so pages, email for 1000 users and still have room for a few thousand of his favorite songs. Furthermore, if Joe has a DSL or a cable line to his house, he&#8217;s got a static IP (an address on the Internet that doesn&#8217;t change often, if at all), is almost always connected to the Internet, and is online at high speed.

In short, Average Joe&#8217;s computer resembles one of the best Internet servers of yesteryear.

If thousands of Joes end up running &#8220;community&#8221; applications like Gnutella, they can take advantage of their connectivity, disk space, and computing power. New &#8220;co-hosting&#8221; services will spring up like popcorn in the microwave. Here are a few possibilities in that direction:

### the distributed future

Visualize for a moment, sending out your website into a collective ether, to be served by hosts around the world: if one computer goes down, others will spring up to serve it. Your page never goes down. Your friends send you email encrypted so only you can read it; it is stored on half a dozen of your friends&#8217; computers, accessible to you from anywhere on the planet. All of this in exchange for setting aside a small chunk of your hard drive (100 megabytes or so) and a little bit of your bandwidth to serve web pages and people&#8217;s email. Any content that you consume (except for your personal email!) instantly is rebroadcast over the network: your computer in this way will help content flow to where it is popular.

### requiem server

In the future, there will be no need for centralized services. All content will be available on this peered network. Strategies for &#8220;partial consumption&#8221; such as letting people read the first few paragraphs and charging for the story or hearing the low-quality song and charging for the audiophile version will be adopted along with anonymous payment schemes. It will be possible to send out intelligent agents to this network to search for books, music, or other merchandise: clients (such as Amazon.com, CDNow, eBay, your neighbor, etc.) that have a match for the merchandise will communicate with you through the peered network, preserving your anonymity. You will be able to make an anonymous payment (or merely a secure payment if you prefer) and your goods will be on their way to you. No more URLs. No more servers that crash, email that is unavailable, websites that you can&#8217;t get to, or data that you can&#8217;t find. It will truly be the end of the server as the line between what it means to be a &#8220;client&#8221; and a &#8220;server&#8221; on the network becoming increasingly blurred to the point of indistinguishability.

&nbsp;

<hr align="center" width="60%" />

### a footnote on wireless

It is worth pointing out that wireless Internet access may well become democratized as well. Since high-speed wireless Internet is taking so long to reach America, citizens may well do it themselves. Apple recently popularized the IEEE 802.11 standard for wireless Ethernet by including [AirPort in the iBook][9]. Wireless Ethernet cards are now available for PC and Mac desktops and portables. More exciting yet, people have been working on [extending the range of the AirPort][10] from a couple hundred feet to **tens of miles**. You can imagine now a future a few years away where one person every city block has got a base station and everyone else jacks in. Some have postulated this as being the ultimate incarnation of the communality and free spirit of the Internet.

<hr align="center" width="60%" />

**<span style="color: red;">ADDENDUM</span>** This article was posted on [freshmeat][11] and several readers posted [very interesting comments][12] (scroll to the bottom) on the essay. I also posted a reply to some of the comments there. Among other notes, Akamai means **both** smart **and** cool. =)

 [1]: http://www.beowulf.org/
 [2]: http://www.cs.sandia.gov/cplant/
 [3]: http://www.seti.org/
 [4]: http://www.distributed.net/
 [5]: http://www.napster.com/
 [6]: http://www.virtualitalia.com/recipes/nutella.html
 [7]: http://freenet.sourceforge.net/
 [8]: http://david.weekly.org/code/safex.php3
 [9]: http://www.apple.com/ibook/airport.html
 [10]: http://macintouch.com/airportantenna.html
 [11]: http://www.freshmeat.net/
 [12]: http://freshmeat.net/news/2000/04/16/955943940.html