---
title: L0K8 – A Simple Location Service For Twitter
author: dweekly
type: post
date: 2008-05-12T22:28:01+00:00
url: /l0k8-simple-twitter-location-service/
categories:
  - Uncategorized
tags:
  - davidweekly
  - dweekly
  - geo
  - l0k8
  - location
  - pbwiki
  - twitter
  - update

---
This weekend I banged out a very simple location service called <a href="http://l0k8.com/" target="_self">L0K8</a>. It consists of a small (1.1MB) Windows download. You install & run, it pops up a web page, you give it your twitter username & password, and now as you move from place to place your Twitter location will change to follow you. And of course you can follow [L0K8 on twitter][1] to stay up to date with developments.

It was really fun and refreshing to go soup-to-nuts in 12 hours, something that I&#8217;ve done before with [PBwiki][2], [SingleStat.us][3], [QuickFinger][4], and [FailStamp][5], but this is my first &#8220;single session hack&#8221; that involved both a desktop client and a web service. I used [ActiveState][6]&#8216;s [PerlTray][7] to make a simple Perl script into a system tray executable then installed with [NSIS][8]. I can provide source if people are interested. The server backend is in PHP and uses [libcurl][9] to post Twitter updates and [GeoIP][10] to do the location lookups.

The desktop app sits resident and every five minutes pulls the update URL (<http://l0k8.com/update.php>) to fetch a JSON array of simple info about the user&#8217;s current location. If the location has changed since the last update, the app then presents the new location to the user and the server posts the update to Twitter if the user has associated their L0K8 account with a Twitter username and password. Multiple installations can be used by the same account and each install is labeled (e.g. with the name of the computer).

This was designed to be the simplest possible incarnation of the server that could work and I think it is a very exciting baseline that could be built out substantially as a simple presence redistribution point. I&#8217;m tempted to explore ways to virally engage people with L0K8. If you have feedback, let me know!

 [1]: http://twitter.com/l0k8
 [2]: http://pbwiki.com/
 [3]: http://www.techcrunch.com/2006/06/15/myspace-nukes-singlestatus/
 [4]: http://www.simtel.net/product.php%5Bid%5D28264%5Bcid%5D163%5BSiteID%5Dsimtel.net
 [5]: http://failstamp.com/
 [6]: http://ActiveState.com/
 [7]: http://aspn.activestate.com/ASPN/docs/PDK/7.2/PerlTray_overview.html
 [8]: http://nsis.sf.net/
 [9]: http://php.net/curl
 [10]: http://www.maxmind.com/app/ip-location