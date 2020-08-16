---
title: Bypassing Ad Blocking
author: dweekly
type: post
date: 2005-10-07T19:56:06+00:00
url: /bypassing-ad-blocking/
dsq_thread_id:
  - 537939252
categories:
  - Uncategorized

---
_This article describes modern ad-blocking technique, their effectiveness, and how advertisers are likely to work around them._

I&#8217;ve had some great degree of success in using the [FireFox][1] [AdBlock][2] plugin to pretty much wipe all ads from my web browsing experience. When I see an ad now, it&#8217;s a bug that I can fix easily &#8211; I just right-click on the image or ad frame, pick &#8220;AdBlock&#8221;, and the URL for the image/frame comes up, usually looking something like:

> **http://server1.myadfarm.com/servead.php?blah=1&blah=2**

I&#8217;ll then replace all of the ad-specific bits with stars to create a pattern match:

> **http://\*.myadfarm.com/\***

What I&#8217;ve done is in one fell swoop eliminate any ads at all from an ad provider. Truth be told, there are only about a dozen big ad providers like this, so with a dozen entries in your filter list, you&#8217;ve already blocked a substantial percentage of ads on the Net.

Another class of ads is served by a site from generic ad-serving software. So if you&#8217;re on **coolsite.com**, reading some cool content, you might see some ads like:

> **http://coolsite.com/ad/serve.asp?foo=bar**
  
> _or_
  
> **http://ads.coolsite.com/serve.asp?foo=bar**

These are blocked with still fairly simple filters:

> **http://coolsite.com/ad/***
  
> _or_
  
> **http://ads.coolsite.com/***

The issues really start coming up when sites deliver pages that intermingle real content along with advertising within the delivered HTML. As long as the client has to do separate and distinguishable work in fetching valuable content versus fetching an ad, it will remain fairly easy for people to write ad blockers.

So what the server really ought to give the client is either ads already baked into the HTML (Yahoo already does this in placing ads for itself on its own properties!) or URLs for ads that are made indistinguishable from the URLs for content.

In the former method, the server performs the ad-fetch itself and injects the results into the returned document as part of a seamless, singular HTML file. This works fine for text-only ads, but to ensure the images render properly, they will have to be located at URLs indistinguishable from &#8220;real&#8221; images by a simple pattern match.

One solution is to have hashed / random directory and file names, tracking on your server which are ads and which are content. So a site could have images as follows:

> _the ad:_ **http://coolsite.com/images/ab4ff192ac/612.gif**
  
> _content:_ **http://coolsite.com/images/fab2392101/513.gif**

If you want to block ad images, you&#8217;ll have to block all images.

Now, with a finite number of ads, users could still in theory assemble a relatively comprehensive list of content vs. ad images and even coordinate these lists in realtime (so only the first user to see an ad would have to endure it). So ideally, the URLs would be session-based. Namely, every visitor to your website sees a different URL for fetching ad and content images, even though your webserver is internally mapping them all to the same images. As a side note, content images and ad images should be of the same format and size &#8211; some rudimentary ad blockers simply block out ad banners that match an industry standard ad format.

The latter approach of having client-loaded ad content is analagous to the image-cloaking above. Separate frames or loaded JavaScript should be at changing URLs that overlap with the same patterns as content. With JavaScript another option is to bake in the ad code with other critical site scripting (like navigation) in the same .js file. This makes it harder to block.

Ultimately, I think that the web will follow TV trends, where advertising becomes more thematically baked into commercial sites. If advertising is truly visually and programatically separable, it will be separated, and site operators will end up operating at a tremendous loss. To avoid this, and to save free commercial services, I think we&#8217;ll see operators deploying techniques like this commensurately with the rise in popularity of sophisticated ad blocking tools.

In some twisted sense, both sides want this arms race to stop. People who already have a good ad blocking solution don&#8217;t really want to many other people to catch on &#8211; otherwise the gig&#8217;s up as content providers are forced to bypass users&#8217; blocks. They&#8217;d like to remain an elite of people getting an ad-free experience. And the advertisers certainly would rather not have to dramatically ramp up their spending on technology to outwit the blockers; they like the status quo just fine. Frankly, as long as quality ad blocking requires pattern matching comprehension and installing FireFox with a plugin, everyone&#8217;s probably fine. The issue will be if next-gen browsers try to make ad blocking technologies more accessible &#8211; a short-term win but a long term unpleasant war.

 [1]: http://getfirefox.com/
 [2]: http://adblock.mozdev.org/