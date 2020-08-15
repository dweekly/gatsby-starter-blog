---
title: Linux Unicode Support Sucks
author: dweekly
type: post
date: 2003-10-09T07:00:00+00:00
url: /linux-unicode-support-sucks/
categories:
  - Uncategorized

---
[Unicode][1] is just about the coolest thing since sliced bread. It&#8217;s the kind of thing after which you wonder how things possibly worked previously. The idea is simple: one character set can represent any character in any language. There are a few different ways of encoding Unicode characters (there are more than 100,000 of them!) but the most popular is &#8220;UTF-8&#8221; for the 8-bit Unicode transfer format.

UTF-8 is not-very-coincidentally also a superset of 7-bit ASCII, meaning that most English documents are already valid UTF-8. The algorithms for dealing with UTF-8 are not overly complex &#8211; while characters are multibyte, the leading bits actually tell you what bit you&#8217;re on, so character counting is easy and does not require the insane juggling of some of the Asian character encoding techniques to find out where you are in a string.

Windows 2000 & XP (and indeed, even NT!) seem to have pretty decent Unicode support. Internet Explorer lets me read UTF-8 pages just fine, including posting mixed Chinese & Hebrew comments on websites. 🙂 I can cut and paste between Notepad and IE without
  
difficulty. Yay!

There was one minor quirk, and that was that IE basically seemed to ignore the META tag on a website (specifying that a page was encoded in UTF-8) if there was a Content-Type header from the server that contradicted it. So I needed to explicitly set the Content-Type
  
header to **Content-type: text/html; charset=UTF-8**. Then everything seemed to render alright.

So I flip on over to Linux to see what the current state of the international toolchain is, figuring it&#8217;s probably going to be incredibly robust, since, what, the [whole of China][2] is basically using Linux, right? Wrong. Hardly anything worked.

To be fair, I first needed to configure my Windows SSH client ([PuTTY][3]) to &#8220;assume&#8221; that the character encoding it was being fed was UTF-8; unfortunately, it seems that terminal protocols don&#8217;t have a good mechanism for indicating the client or server&#8217;s capacity for various encoding techniques. So I also need to set the **LANG** environment variable
  
to **en_US.UTF-8** from its default of **en_US**. This still wasn&#8217;t enough.

To get [lynx][4] (the terminal web browser) to work properly I needed to call it with **&#8211;display_charset=utf-8**. I finally saw Chinese over SSH. Yay.

I looked at quite a few editors (Emacs, Vim, Xemacs, QEmacs, and mined) of which only mined seemed to support UTF-8 editing in any sort of reasonable capacity. The next version of Emacs promises &#8220;real UTF-8 support&#8221;, but I seem to recall hearing those sorts of promises last year, too. I&#8217;m frankly distressed. Thankfully the basic tools like **less** seem to be fully UTF-8 compliant. Odd.

Anyhow, more rant later. 🙂

 [1]: http://www.unicode.org/
 [2]: http://www.linuxjournal.com/article.php?sid=5784
 [3]: http://www.chiark.greenend.org.uk/~sgtatham/putty/
 [4]: http://lynx.browser.org/