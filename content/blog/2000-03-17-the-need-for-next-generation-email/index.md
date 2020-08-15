---
title: The Need For Next-Generation Email
author: dweekly
type: post
date: 2000-03-17T20:17:53+00:00
url: /the-need-for-next-generation-email/
categories:
  - Uncategorized

---
Email is, arguably the killer app of the Internet. It was what launched it and still is one of its primary uses. When surveying current email systems in place, it occurs to me that an upgrade is in order.

Now I&#8217;m not suggesting an overhaul of the server-server transaction mechanism (known as SMTP); not only would that be an effectively impossible task, but it also is not the issue that I wish to address. The thing that I&#8217;m hoping to see upgraded is the actual mechanism of mail storage and notification. This is the mechanism by which a mail server interacts with a client. There are four main ways that people currently read mail: directly off of the file system (using &#8220;pine&#8221;, &#8220;Mail&#8221;, or &#8220;elm&#8221; for instance), remotely downloading their email (using the POP3 protocol to read it in Eudora or Outlook Express), remotely managing their email (using the IMAP protocol to read it), or reading it over the web. There are disadvantages to each of these approaches, although IMAP comes closest to the future I&#8217;m hoping for.

Reading mail directly off of the file system means that one has to telnet directly into the host offering up one&#8217;s mail. This is obviously non-ideal, since one has to be familiar with Unix to do this (no pretty user interface). Also, this tends to become unwieldy as the files grow large.

POP3 is non-ideal because the client downloads all of the mail to a singular location. If you respond to a piece of email, your response is only saved on the client, and only that computer knows which mail you&#8217;ve read, which you&#8217;ve replied to, etc. People usually have their clients delete the downloaded mail from the server as well, meaning that not only is your email only readable from that one client you downloaded your mail to, but should that computer die, you lose ALL of your mail. This is not very convenient. Since Stanford only supports POP3, this is why I use my own email server.

Web-based mail is becoming a popular alternative to all of this. The advantage of this is that you can check your email from **anywhere** using any computer that is connected to the Internet and has a web browser. You can also use a plethora of server-based functionality that can be administrated via HTML. The bonus part of this is that upgrading the mail interface & functionality is as easy as just updating the server. Security is as easy as making the HTTP connection HTTPS (HTTP with SSL, something nearly every browser supports)! There are a few drawbacks, though. One is notification: you have to actively keep checking to find when you have email. Another is user interface: you&#8217;re constrained by what HTML can do, and that&#8217;s not much. Drag and drop, for instance, doesn&#8217;t work.

IMAP is a pretty nifty solution to a lot of POP&#8217;s problems, and comes significantly closer to the solution I hope to acheive. With IMAP, the server keeps track of everything. While clients do download mail from the server, all tracking of replies and which pieces of mail you&#8217;ve read is done on the server. So no matter where you log in from, you&#8217;ve got your mail and you know which you&#8217;ve read and which you haven&#8217;t. I have several beefs with IMAP. One is that it&#8217;s difficult to filter incoming mail: with POP3, since the client is in charge of all of the mail, it&#8217;s easy for the client to sort incoming mail into various piles based on its properties. Doing this with IMAP requires some pretty tricky client maneuvering: namely downloading the message, checking it for where it should go, deleting and purging it from the INBOX, then adding it to the folder where it should go. For this reason, most all IMAP clients don&#8217;t support filtering with IMAP. Secondly, client/server interactions are not easily made secure. Username, message, and password security should be incorporated into the product from the start; if you make security difficult, people won&#8217;t bother. As a result, most people who use IMAP continuously expose their passwords.

So, some features that I think need to be integrated into a next-generation mail client-server protocol and server architecture (the key is putting the smarts in the server!):

  * Security (Authentication + Encryption) integrated in an easy-to-use fashion
  * Easy server-side filtering of mail
  * Web interface
  * Easy-to-implement clients for all platforms (Java reference?)
  * Priority-filtered notifications (e.g., if I&#8217;m busy, only tell me about emails from my boss or my girlfriend or if they contain the subject &#8220;URGENT&#8221;
  * Efficient, queriable (searchable) server storage of many messages, some large, for many users. (Pre-decoding & separate storage of attachments might be a wise idea here)
  * Message threading model for export of discussion to Internet/Intranet (integrated web/FTP export mechanism w/digesting capability)
  * Trivial mailing list creation/management/archiving/searching
  * Advanced mail-forwarding & message tracking (multi/random recipient [sales automation] tracking who responded to what)
  * Support for many users -> one mailbox
  * Support for one user -> many mailboxes [many-to-many]