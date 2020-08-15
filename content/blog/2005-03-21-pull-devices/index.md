---
title: ‘Pull’ Devices
author: dweekly
type: post
date: 2005-03-21T20:02:33+00:00
url: /pull-devices/
categories:
  - Uncategorized

---
A few days ago, it occured to me that it would be useful if my alarm clock knew to awake me an hour before my first appointment of the day, as automatically pulled down from my Yahoo! Calendar. All the alarm clock would really need to do is to have a net drop (wifi / ethernet) and every half hour or so attempt to establish a connection to a central server and ask if there were any updates to my schedule. The alarm clock itself wouldn&#8217;t need any additional interface itself! When the user first buys the alarm clock, they go to the central website, punch in the serial number on the bottom of the alarm clock and configure their clock on the remote website, such as configuring synchronization with Yahoo! (or other calendaring services). When the alarm clock checks into the server, it self-identifies with its serial number and pulls down your information (as well as the current time, accurate to microseconds, properly adjusted for daylight savings).

As Ethernet/WiFi chips become cheaper and more common, we should expect to see this level of integration in a great number of devices. This differs slightly from previous visions of the &#8220;networked home&#8221; in which smart devices, such as refrigerators, coffeepots, etc, would have either their own user interfaces or where they would be running their own little HTTP servers responsible for the logic of the device&#8217;s operation (similar to how many NATs work these days), since the user interface would not only not be physically on the device (with knobs and buttons and displays), but it wouldn&#8217;t even logically be on the device (with a website hosted on the device).

The advantage of this approach is that it reduces to an absolute minimum the intelligence that needs to be on the end device; the server interface could be accessed many different ways in theory (web, email, phone, IM, etc) without any added need for complexity in the end device. As long as there is a simple protocol that exposes to the server the capabilities of the device, the problem is solved from the device&#8217;s standpoint and has been future-proofed without needing any dangerous &#8220;flash upgrades&#8221;.

This methodology works particularly well for simple pieces of equipment that benefit from being synchronized with a digital lifestyle. I&#8217;m pretty sure a toaster wouldn&#8217;t qualify, but alarm clocks and coffeemakers could plausibly fall under this category. Another variant of this approach could involve first using Rendezvous-like technology to have the alarm clock seek out a local &#8220;calendar server source&#8221;; failing that, the alarm clock would fall back to attempting to contact a central calendaring server. That way, local resources could be used as appropriate (if the clock is at home), but there is useful operation away from a local calendar server (if the clock is on the road).