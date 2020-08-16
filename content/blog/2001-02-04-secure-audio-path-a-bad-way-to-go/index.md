---
title: 'Secure Audio Path: A Bad Way To Go'
author: dweekly
type: post
date: 2001-02-04T19:55:48+00:00
url: /secure-audio-path-a-bad-way-to-go/
categories:
  - Uncategorized

---
_written for the pho list_

Well, what net news giveth it taketh away. Apparently Microsoft has gone ahead and incorporated &#8220;Secure Audio Path&#8221; software down to the kernel level. Basically they keep a stream encrypted until it&#8217;s passed on to an &#8220;authenticated&#8221; sound card driver. While there are still ways around this, it may make some things tougher and is a huge step against actually providing consumers the capability to listen to their music as they want to.

As one example, [the page on Secure Audio Path][1] explains that audio applications will no longer be able to apply equalization (e.g., bass boost) to an encrypted audio signal. Visualization programs are alotted an explicitly poor-quality version of the signal to which to perform visual effects synchronous with the music. Given the low existing quality of the Windows Media visualization plugins, you can bet this isn&#8217;t going to help much. (&#8220;Worse than telephone quality&#8221; as quoted from their page.) And you&#8217;ve got to love how they&#8217;ve stuffed all of this DRM software into the kernel &#8211; those of you engineers on the list know that as you increase the size of the software that runs in kernel mode, you dramatically increase your chances of locking up the kernel. The whole reason behind putting programs in user mode is to protect them from each other and from the OS &#8211; that way if an application crashes, it doesn&#8217;t take the system down with it, too. Stuffing all of this DRM software into the kernel sure isn&#8217;t going to help things. My experiences with Windows Media protection have been pretty marginal, often causing lockups & crashes. And that was at the _user_ level! [sigh]

But it&#8217;s the cryptographic signing of the drivers that takes this thing to a whole different level of insidiousness. In order for an encrypted stream to play, Microsoft has to approve the driver for your sound card and sign it. Without a signed driver, DRM content won&#8217;t play. So every time your sound card company releases an update, you&#8217;ve got to wait to get it signed by Microsoft. The bad news is that they&#8217;ve already had a driver signing program for the last few years and that very few drivers are actually signed by Microsoft. With video DRM coming soon hereafter, what this really does is give Microsoft the power to determine what hardware it will allow to run Windows.

If your sound card company went and helped the Linux community make a driver, MS might just accidentally take another couple months to sign your driver &#8212; in the interim your competitor might just jump into the market with the special features you had on your card and, through a good MS relationship, get their drivers signed and their cards deployed. Your time to market, indeed nearly the whole of your success, depends upon Microsoft. Soon video card makers will be in the same boat as well as hard drive makers (remember the encryption ATA functions?). The same goes for CD readers, DVD readers, burners, scanners, printers, even USB speakers. Why allow any venue for those pirates? Since, technically, every component in the system is &#8220;suspect to interception,&#8221; and capable of assisting infringement, Microsoft can use this suspicion to force validation of all component drivers. Who is the arbiter of whether or not a driver is sufficient to be signed? Microsoft, of course.

Those of you who are strongly in favor of DRMs are playing the fools right into Microsoft&#8217;s hands. You are fighting free speech, fighting against consumer freedoms, and fighting against democracy. Worst yet, and you don&#8217;t even realize it yet, but you are playing right into the hands of Microsoft &#8211; and you&#8217;ll be so happy that all of your content is protected from those nasty hackers who would listen to your music for free. You&#8217;ll be happy until Microsoft has you firmly by the balls and starts to squeeze. Because once everyone is using a Microsoft platform and the hardware vendors and software vendors are all in lockstep with their plan&#8230;what do you think they&#8217;re going to do it for free? That MS has gone Open Source? No, they&#8217;re going to start charging you, the content producers, obscene amounts of money to publish onto their framework. And you really won&#8217;t have any choice at all in the matter. Because if you start publishing non-DRMed audio, your content won&#8217;t play on Windows boxes. Lanier was right, but he was wrong about timeframes &#8211; this is all happening way faster than he predicted.

Someday, with luck before it&#8217;s too late, you songwriters, you labels, you artists and musicians and composers, you will wake up and realize that the hackers were on your side all along. That you were singing about freedom and they were hacking freedom. And the hackers aren&#8217;t paid anything for their hacking and go, for the most part, unrecognized. And the musicians aren&#8217;t paid almost anything for their music and go, for the most part, unrecognized. What a perfect, beautiful couple! And yet the framework of the present situation has pushed us against each other with swords in balled fists and chanted for blood, for us to smite each other.

I don&#8217;t know any hacker who doesn&#8217;t think that musicians should get paid for their music. Some of my hacker friends compose music. I don&#8217;t know any musicians that aren&#8217;t excited by the subversive nature of the Internet and peered distribution mechanisms and, consequently, who don&#8217;t respect hackers. Why don&#8217;t we both work together, put down our swords, figure out how to put bread in each other&#8217;s mouths (yes, even hackers are having a harder time than usual with that these days) and subvert the structure that has caused this unnatural schizm between us?

Come, musicians, let me show you the beauty of Perl. You can show me how to compose a tune that will stick in people&#8217;s heads. And maybe together we&#8217;ll forge a hymn of clefs and compilers for a revolution that has only now begun to seed.

 [1]: http://msdn.microsoft.com/library/default.asp?URL=/library/psdk/wm_media/wmform/htm/understandingsecureaudiopath.htm