---
title: Tribooting Apple’s Titanium Laptop
author: dweekly
type: post
date: 2002-02-09T06:16:05+00:00
url: /tribooting-apples-titanium-laptop/
dsq_thread_id:
  - 533436453
categories:
  - Uncategorized

---
<span style="color: blue; font-size: xx-small;"><strong>sidestory</strong></span> <span style="color: gray;">(how i got my laptop)</span>

I recently had the joy of acquiring an [Apple][1] [Titanium G4 Laptop][2]. This is
  
kind of interesting in and of itself, because I&#8217;m a Linux junkie who
  
reluctantly uses Windows desktops for client work; a year ago I would
  
have laughed at you if you had told me I&#8217;d be craving an Apple machine.
  
But the one-two of Apple&#8217;s gorgeous notebook design and its release of
  
[OS/X][3], a consumer-deployed Unix with a gorgeous front end, I was hooked.
  
I talked my boss into the necessity of porting our company&#8217;s software to
  
OS/X and expensed the purchase. (Hey, I **did** do the port a week
  
after I got the box. =) )

I waited on edge for weeks for the laptop to arrive; I had bought it
  
through the [Apple Developer][4] Discount program, so it didn&#8217;t really cost
  
my company very much at all. Unfortunately, that meant that shipping
  
dates could range up to two months after the order was put in. Finally,
  
the box came. Having no interest in OS/9, I immediately plopped in the
  
OS/X CD to install a real operating system. Hurrah! A real laptop!

Urg, sort of.

The first generation DVD drives that Apple decided to slam into these
  
thin laptops were _too_ thin. So thin that the CDs would grind up
  
against the roof of the drive and be unable to spin, making a horrendous
  
WHIZZAWHIZZAWHIZZAWHIZZA at around 100dB. A few coworkers from surrounding
  
cubes ducked their heads in: &#8220;Hey, what&#8217;s that sound?&#8221;

I had to very sheepishly explain to them that my brand new shiny toy had
  
shipped broken. Doh! I sent it back the very next day for repair. I didn&#8217;t
  
see it again for a month. So you can imagine how happy I was to finally
  
get it back: after three months of waiting, I had a functional laptop. =)

<span style="color: blue; font-size: xx-small;"><strong>installing linux</strong></span>

Last weekend, I went to [DEFCON][5], a computer security convention. A really surprising number of people there had Apple laptops, and a large portion of them were running Linux or OpenBSD on them! I thought &#8220;hey, I could do that, too!&#8221;&#8230;as soon as I got back home, I set off to triboot my computer between OS/X, Linux, and OS/9. (Even though I don&#8217;t care for OS/9 much, OS/X can&#8217;t play DVDs yet, and a lot of system updates (for the firmware, etc.) are released under OS/9 only.)

I grabbed the [Debian PPC][6] [ISOs][7], but the installer was rather unfriendly and
  
kept puking on me, even when I put in the special boot-options to tell it
  
to use the OpenFirmware graphics only. Whenever I got to the partition part,
  
it would tell me I had partitions that were hundreds of gigabytes large.
  
If I tried to format any partitions, it would crawl, a sector every other
  
second, through what it claimed to be billions of sectors. I gave up after
  
five hours and decided to do some more research.

I looked a bit at [LinuxPPC][8], but was told that it&#8217;s pretty wildly unstable and uncomfortable. [YellowDog][9] 2.0 had been getting some positive vibes from the people I consulted with, so I downloaded the ISO and burned myself an install CD.

Separately, I had been having issues running &#8220;Classic&#8221; (OS/9) from within
  
OS/X, and I was told it was a very good idea to have them on separate
  
partitions. I backed up my handful of interesting data on the box, wiped
  
my partition table using the disk utility that came with my Titanium&#8217;s
  
&#8220;Software Restore&#8221; CD, and allocated four partitions: 3Gb for OS/9, 11Gb
  
for OS/X, 5.5Gb for Linux, and a 200Mb swap partition for Linux. As it turned
  
out, that was one too few! Yellow Dog Linux wanted an additional 10Mb &#8220;boot
  
partition&#8221;. Apple seems to create a whole bevy of little partitions, so it
  
ended up that my Linux root is on the 11<sup>th</sup> partition! Crazy. So
  
you need to allocate five partitions by hand to run the whole setup properly.

I reinstalled OS/9, ran Software Update to update my firmware and the OS,
  
installed OS/X, ran Software Update a few times, installed my OS/X development
  
environment and configured my laptop for NIS, and then proceeded to install
  
Linux. There were some issues with the YDL install, for sure (It died repeatedly
  
with weird errors when I tried to tell it what NIS domain I was in) and
  
only supported a text-mode install, but it seemed to generally go alright.

At the end of the install, I made the mistake of choosing to boot MacOS by
  
default, figuring I&#8217;d be presented with a little menu at boot of which
  
partition (OS/9, OS/X, Linux) I wanted to boot to. I reboot into OS/9. Whoops.

<span style="color: blue; font-size: xx-small;"><strong>juggling multiple OSes</strong></span>

Incidentally, to get into Open Firmware, reboot, wait for the reboot noise
  
to finish, then quickly press (**in order**) Apple-Option-O-F. Many guides
  
get this wrong and tell you to hold down all four buttons as you are rebooting.
  
You really have to depress them (in order) right after the reboot to get into
  
Open Firmware. It really weirded me out that Open Firmware is a Forth
  
interpreter. Damn it, you&#8217;re not supposed to be able to interactively program
  
your computer at the BIOS level! =) Freaky.

It&#8217;s good to memorize what partitions your OSes are on. For me, it was easy.
  
OS/9 was on partition 9, OS/X on partition 10, and Linux on 11. So in Open
  
Firmware to boot into OS/9 I&#8217;d type `boot hd:9,\:tbxi`. To boot
  
into OS/X: `boot hd:10,\:tbxi`, and to boot into Linux:
  
`boot hd:11,\yaboot`. (OS/9 and OS/X use &#8220;:tbxi&#8221; as their loader,
  
whereas Linux uses &#8220;[yaboot][10]&#8220;.) I now could boot into any of three operating
  
systems on my computer! All of them work perfectly! I&#8217;ve even got sound under
  
Linux! (Although sleeping is a little buggy still&#8230;)

It gets stranger yet: in OS/X you can run OS/9. It&#8217;s called &#8220;Classic mode&#8221;.
  
In Linux, you can also run OS/9 &#8211; it&#8217;s called [Mac-On-Linux][11].
  
This will let you run MacOS on PowerPC Linux **really fast** (it&#8217;s not
  
having to emulate anything. It just runs the OS directly!) So you can run
  
your different OSes inside each other. =) [XDarwin][12] lets your run (and compile) X/Windows programs on OS/X, just to keep things interesting. Oh, and then there&#8217;s the [GNU-Darwin ports][13] collection with several thousand BSD packages for OS/X (and native Darwin). Whee!

**Dave&#8217;s nifty Tip of the Day:** in OS/X, type &#8220;>console&#8221; as your username at login to get a graphic-free login prompt! =)

More info later: the short of it is that tri-boot&#8217;s quite comfortably possible,
  
and it&#8217;s fun to run KDE 2.1 on your Titanium laptop! (And boy is it fast!)
  
Oh, and OS/X is cool, 95% POSIX-compliant (eck &#8211; almost there, guys!), and
  
has crappy `man` pages. All hopefully fixed soon, except for the
  
fsck&#8217;ing Alt-Tab issue (linear progression instead of recency stack!). Good
  
job overall, though!

Later! =)

 [1]: http://www.apple.com/
 [2]: http://www.apple.com/powerbook/
 [3]: http://www.apple.com/macosx/
 [4]: http://developer.apple.com/
 [5]: http://www.defcon.org/
 [6]: http://www.debian.org/ports/powerpc/
 [7]: http://www.linuxiso.org/debian.html
 [8]: http://www.linuxppc.com/
 [9]: http://www.yellowdoglinux.com/ydl_home.shtml
 [10]: http://www.alaska.net/~erbenson/ybin/doc/yaboot-faq.html
 [11]: http://www.ibrium.se/linux/mac_on_linux.html
 [12]: http://www.mrcla.com/XonX/
 [13]: http://gnu-darwin.sourceforge.net/news.html