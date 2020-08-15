---
title: VoIP Colorizing Logger
author: dweekly
type: post
date: 2005-10-05T17:49:59+00:00
url: /voip-colorizing-logger/
categories:
  - Uncategorized

---
_This article describes a system for making useful transcripts of Voice over IP (VoIP) chats._

If you already have a VoIP based conferencing system that&#8217;s taking and mixing several users&#8217; voice inputs and rebroadcasting the result, it would be handy to have an automated transcriber that could record the conversation in a useful format for later reference. Transcription results could be available on a website after the call, on a website in realtime, streamed over IM in realtime, or emailed out to participants as the call terminates.

A speech parser process is attached to each incoming line, and as each word is completed is appended to a shared buffer with a tag corresponding to the voice line being parsed. Results are colored per the voice line, and preliminary output could be as follows:

> <span style="color: red;">Hi. Jim here. Anyone else on this line yet?</span>
  
> <span style="color: blue;">Ted here. John is here too. Let&#8217;s begin.</span>
  
> <span style="color: green;">Hi Jim.</span>
  
> <span style="color: red;">Great. Are we a go for the presentation tomorrow?</span>
  
> <span style="color: green;">We&#8217;ll need to update the Northeast numbers. They&#8217;re off.</span>
  
> <span style="color: blue;">Mary said she&#8217;d fix that tonight. I think we..</span>
  
> <span style="color: red;">We&#8217;ll actually just be presenting West Coast numbers.</span>
  
> <span style="color: blue;">Oh.</span>
  
> <span style="color: green;">Okay, great.</span>
  
> &#8230;

After the conversation has been completed, a third party, like a secretary, could go over the results and fill in which color corresponded to which name. This could be especially useful if subsequent conversations were to be stored in the same database &#8211; searches could then be performed, such as finding out what Ted said about Q3 numbers in the last few conversations. Having pre-filled &#8220;likely participants&#8221; available as a drop-down list selection could make quote assignment particularly easy. It is understood that this system might not work ideally for situations where multiple parties are on a single line. But as offices become increasingly virtualized, it&#8217;s more likely than ever that none of the participants are actually in a room together during a meeting.