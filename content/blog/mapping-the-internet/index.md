---
title: Mapping the Internet
author: dweekly
type: post
date: 2008-03-31T01:01:49+00:00
url: /mapping-the-internet/
categories:
  - Uncategorized

---
With only about 50% of PBwiki&#8217;s traffic coming from North America and with preliminary benchmarks showing 3+ second page load times in Paris, I&#8217;ve been thinking a bit about how to make the PBwiki experience snappy for people around the world. We&#8217;ve experimented with using various CDNs, but I&#8217;ve actually yet to be blown away by any of them. Having our own nodes at the edge can provide a number of benefits, such as having a well-defined cache invalidation strategy, performing DNS closer to the edges of users&#8217; networks, caching secure data, and performing SSL handshakes quickly for logins.

So a reasonable question to ask at this point is &#8211; where are the spots where we&#8217;d get the most bang for the buck adding a new server? Answering this question requires a basic understanding of Internet topology. Armed with [VPS][1] accounts in [Singapore][2] and [The Netherlands][3] and [traceroute.org][4], I set out to get a basic feel for the current state of global networks.
  
[![][5]][6]

My principal hoped-for finding turned out to be true &#8211; links are _mostly_ additive. Meaning that if it takes 200ms to get from Singapore to California and 85ms to get from California to Virginia, it takes nearly 285ms to get from Singapore to Virginia. Generally the direct route times were about 10% faster than the sums of the links, but never a lot less than that. This was encouraging because it said that latency was fairly consistently due to the speed of light.

That said, there were some startling findings as to global connectivity &#8211; The Netherlands are about 4500 miles away from India, but **packets from Amsterdam consistently routed through Palo Alto** on a 16,000+ mile journey the wrong way around the planet.

I also found that most of South America seems to route through Miami &#8211; even traffic within South America! And that traffic for South Africa often routes through New York, even from London, crossing the Atlantic twice. [SAT-3][7] doesn&#8217;t seem to be doing its job.

David&#8217;s Tips on International Expansion Ordering:

  1. **1st cluster:** To be most Net-accessible, your first cluster should probably be hosted in the US on either the West or East coast, depending on target demographic.
  2. **2nd cluster:** Your second cluster should probably be on the other US coast &#8211; this will mean you&#8217;re within ~40ms of nearly all of North America, are under 100ms from Europe, and are under 200ms from Asia & Oceania.
  3. **3rd, 4th, 5th, and 6th clusters:** Once you get into the swing of having a few clusters, the remaining spots that make sense seem to be Europe (Amsterdam & London are eminently reasonable choices), Australia <u>or</u> New Zealand, Japan, and Singapore <u>or</u> Hong Kong. <font color="#999999"><i>It looks like the European ISPs have been peering reasonably well and are all under 50ms from London or Amsterdam. AU and NZ are ~30ms apart (Sydney from Auckland), as are Singapore and Hong Kong.</i></font>
  4. **Extra clusters:** As needed, you can deploy in Brazil (which won&#8217;t help other South American traffic), South Africa (which won&#8217;t help other African traffic), India, or Israel (for Middle East acceleration).

More later on how to expand into additional points of presence at a low cost.

 [1]: http://en.wikipedia.org/wiki/Virtual_private_server
 [2]: http://gplhost.com/hosting-vps.html
 [3]: http://www.budgetdedicated.com/
 [4]: http://traceroute.org/
 [5]: http://www.gliffy.com/pubdoc/1400752/S.jpg
 [6]: http://www.gliffy.com/pubdoc/1400752/L.jpg
 [7]: http://en.wikipedia.org/wiki/SAT-3/WASC_(cable_system)