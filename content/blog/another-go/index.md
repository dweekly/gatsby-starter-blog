---
title: "Another Go of It: Static Site Hosting"
author: dweekly
description: David describes selecting his new web hosting infrastructure.
type: post
date: 2020-08-15

---

There are many options for hosting a website in 2020, perhaps too many!

Several options are fully vertically integrated offerings, like Wix, Webflow, and Weebly - they'll take care of domain registration, DNS hosting, web hosting,
and browser-based editing. These offerings are highly efficient but also have enormous lock-in; they're designed to be very difficult to move away from, and
make it difficult for those who want more fine-grained control over their website's rendering and HTML.

Conversely, Wordpress has evolved into a fairly sophisticated hosting architecture of a maze of configurable plugins, any set of which seem to have exciting
vulnerabilities at any point in time. You can make a site that does nearly anything in Wordpress, but it is also its own sophisticated ecosystem that demands
time and attention to master. There are great hosts like WPEngine that minimize the burden and make good out-of-the-box choices, which is why I hosted my web
presence for years with them.

Back when I was in college, none of these offerings existed, so I coded my own website logic, all in PHP3. This was relatively efficient and gave me great
control over the HTML being output but also formed a development community of one, limiting my ability to benefit from the evolution of the ecosystem and
improvements in workflow. Furthermore, even though my hosting setup was completely bespoke, it was still vulnerable to automated hacks and more than once
I found my server taken over by a bot that had found an exploit in my hand-rolled commenting system.

The general consensus now is that comments (and interactivity in general) are usually a bad idea due to the vast armies of bad actors and sophisticated bot
scripts; if you do want dynamic interactions with the site, better to have those through scoped and tested API endpoints that can be carefully monitored and
gated, or even hosted elsewhere. This then offers a nice separation of concerns: content, layout, and interaction. For many websites like this one,
interaction may not be a goal, beyond linking the user out to email, Twitter, LinkedIn, and so forth. So we've seen a rise in popularity in "static sites",
where a site's articles are "compiled" into a production version and pushed out to be hosted.

I considered self-hosting my website again (and may yet!) since I have gigabit AT&T fiber and a static IP, but the offering from Netlify is pretty compelling
when integrated with Gatsby; I can make edits locally with "gatsby develop" and then when I'm happy, commit the changes to my GitHub repo, where Netlify
is notified of the change and compiles the website for publication.

This gives me a reasonable balance between community (relying on Gatsby and plugins thereof), separation of concerns (authoring content in Markdown),
control over generated HTML (all in the source in my repo), and hands-off hosting (Netlify handling my static site hosting).