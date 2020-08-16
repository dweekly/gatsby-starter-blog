---
title: Why Blade Servers Aren’t Smart
author: dweekly
type: post
date: 2005-10-07T07:00:00+00:00
url: /why-blade-servers-arent-smart/
categories:
  - Uncategorized

---
_This article explains why thin form-factor servers like blades may not be a good idea._

You may have heard of the superthin form factor of Internet servers called _blades_. They&#8217;re designed to be packed to the gills in a datacenter, so hundreds of servers can be squeezed into a single rack. This sounds like a good idea for people who are short on space.

The truth is that most people are not actually short on space. Space at a colocation facility, while not free, is very cheap. That&#8217;s because most of what actually costs money is power and bandwidth. Power has to be charged doubly since every watt of electricity given a server has to be spent again to pump the server&#8217;s heat out of the facility. With the dramatic recent increases in fuel costs, we can probably expect electricity prices to continue climbing at a rate that will make it a significant portion of the cost.

Since the goal is to save money, someone considering purchasing a blade system should ask if it is likely to save them real estate costs (yes, since you can squeeze more servers in), electrical costs (not really, since blade servers are not necessarily more power efficient on a computations-per-watt basis), aquisition costs (MUCH higher per computational unit than for a standard server), and maintainance costs (MUCH higher, since you&#8217;re locked into a rare-vendor solution). Plus, since there&#8217;s no real standardization on blade form factors (deliberately!), upgrades are going to be expensive and support might simply vanish a year or two down the road if the vendor decides not to engage blades anymore.

Blades offer a mild savings in real estate costs for a huge penalty in upfront costs plus a great deal more risk with support and future expansion. While they&#8217;re sexy, blades are just not a good idea.