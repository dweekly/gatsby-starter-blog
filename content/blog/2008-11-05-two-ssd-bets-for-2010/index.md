---
title: David’s Two and a Half SSD Bets for 2010
author: dweekly
type: post
date: 2008-11-06T04:26:48+00:00
url: /two-ssd-bets-for-2010/
categories:
  - Uncategorized

---
I&#8217;ve been following with keen interest the development of [solid state drives][1] (SSDs), which are basically really fast and reliable flash memory to use instead of the current rotating magnetic drives. Why does this matter? Well, first and foremost, they don&#8217;t rotate, which means that they don&#8217;t have any moving parts, which means they could last much longer and consume less electricity. But most importantly, the computer does not need to wait for the read/write head to either pivot to the right place on the disk or wait for the right bit of data to rotate underneath it. These two wait times are usually combined into an average &#8220;seek&#8221; time. This &#8220;seek&#8221; time has only very marginally improved in the past 20 years. It&#8217;s clear how to improve the seek time &#8211; make hard drives rotate faster (lowering average wait times for a piece of data to rotate underneath the head) and make the disk smaller, reducing the distance the head has to travel to get to a piece of data. In the past 10 years, hard drive seek times have gone from ~9ms to ~6ms while storage sizes have gone from 20GB to 1.5TB. So, 30% faster seeks and 100x more data. So we&#8217;ve hit a bit of a brick wall in terms of how long it takes to get a piece of data from a magnetic hard drive.

The real answer is to not spin, but it has been just so darn cheap to make high-density hard drives that the cost-per-byte of other solutions has not been able to hold up. And it won&#8217;t for some time to come. But, fascinatingly enough, that may not matter. Because about five years ago we hit a magic tipping point where people (generally) stopped filling up hard drives. It seems around 100GB is the magic limit for most regular computer usage. With the demand curve on storage size tapered off, it became inevitable that the solid state solutions would start catching up. And that brings us to today. Or rather, to the end of 2010, which is what my two and a half bold, related predictions address:

**1) Hard drives will be gone.**

_Excluding backup devices, consumer computer devices will not come standard with rotating magnetic hard drives by the end of 2010._

Why? Hard drives will still be larger, but it won&#8217;t really matter for the vast majority of people, who won&#8217;t use more than about 100GB of data and don&#8217;t want to worry about losing it. Like tape, hard drives will still be around as backup media, since our last-mile broadband issues won&#8217;t be solved by 2010. At least in the US. (Backups then as now won&#8217;t commonly be done to the cloud. Even assuming regular homes will have 2mbps upstream [optimistic!] backing up 100GB of data will still take 5 solid days to complete, versus a USB 3 hard drive which could do it in 17 minutes.)

**2) [Windows 7][2] will boot in seconds.**

_Microsoft is secretly developing an SSD-optimized (log-structured) filesystem for Windows 7 that will allow it to boot in seconds. This will be the principal selling point of Windows 7._

Microsoft has been very clear that [speed is a primary goal][3] for their next operating system. Experience accelerating Vista with hybrid drives has given them the start of the technical chops they need to be able to deal with the unique properties of flash memory. Their touchpoints with enterprise customers and storage vendors give them clear visibility into the developments happening in the space where the inevitable domination of SSDs should be obvious. Furthermore, Microsoft would want to keep these developments quiet to avoid spurring on currently-immature Linux flash filesystems like [logfs][4]. That way when Windows 7 launches in early 2010 there will be a large performance differential between it and any other desktop operating system. The marketing message will be simple: &#8220;The power of Windows, up and running in seconds.&#8221; This will be the last straw that gets people to upgrade from Windows XP.

**2b) SSDs will come bundled with a Windows 7 Upgrade.**

If bet #2 above holds true, since most of the performance advantages of Windows 7 will only be realized on a computer that has a solid state drive, to upgrade effectively requires you to also swap out from XP and your magnetic drive to Windows 7 and a solid state drive. This will be a HUGE driver for SSD upgrades when Windows 7 comes out in early 2010, helping bet #1 come true by driving quantities of scale. Because Microsoft will recognize the importance of SSDs to WIndows 7&#8217;s success, they will partner with vendors to offer an affordable &#8220;upgrade bundle&#8221; that combines an XP->7 upgrade with an SSD and costs less than $500.

Conclusions from this? Short hard drive companies that don&#8217;t have an SSD play, go long on the SSD manufacturers, and expect Microsoft to drive an unprecedented number of upgrades to Windows 7 in 2010, blowing the pants off of a (let&#8217;s be frank) incredibly lackluster Vista launch.

 [1]: http://en.wikipedia.org/wiki/Solid-state_drive
 [2]: http://en.wikipedia.org/wiki/Windows_7
 [3]: http://www.computerworld.com/action/article.do?command=viewArticleBasic&articleId=9119230
 [4]: http://logfs.org/logfs/