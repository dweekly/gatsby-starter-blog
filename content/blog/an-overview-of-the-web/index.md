---
title: An Overview of the Web
author: dweekly
type: post
date: 2012-11-22T00:52:15+00:00
url: /an-overview-of-the-web/
categories:
  - Uncategorized

---
_Written as a Thanksgiving present for Kate Compton_

# OVERVIEW

A device you access the Internet with is a computer. Even if you think of it as your phone or your tablet or your laptop or your desktop, all of these things are actually computers. Your computer, when connecting to the Internet, is called a &#8220;client&#8221;. Your client, running a program that acts on your behalf (called a &#8220;user agent&#8221;) sends messages to another kind of computer called a &#8220;server&#8221;, that does its best to answer your client&#8217;s questions. The language the user agent uses to talk to the server is called a &#8220;protocol&#8221;. When you&#8217;re requesting a web page, your user agent is your web browser &#8211; such as Firefox, Chrome, Safari, or Internet Explorer &#8211; and this user agents uses the HyperText Transfer Protocol (HTTP) to ask questions of a &#8220;web&#8221; server and receive a response. There are other protocols, like the File Transfer Protocol (FTP), the Simple Mail Transfer Protocol (SMTP, used for email), Skype, and many others. Many downloaded multiplayer video games use their own special protocols to talk to game servers. Let&#8217;s dig in a little more into what happens when you fetch a web page.

Your computer is connected to the Internet most commonly via WiFi or the cell network. Your computer has an antenna inside that communicates with a nearby special computer called a &#8220;base station&#8221; that also has a similar kind of antenna in it. Your computer says hello to the base station and asks for an Internet Protocol (IP) address using a protocol called DHCP; the base station responds with an IP address assignment, let&#8217;s say 10.0.1.102, and some other information, including a Domain Name System (DNS) address. Your computer is now ready to try and send requests to a server over the Internet.

When you type in an address into your web browser, like &#8220;news.ycombinator.com&#8221;, your computer first needs to look up the IP address for that server so it can send the request. To do this, it sends a DNS request to the DNS server returned by the base station. In this case, the base station looks up what server is responsible for all of .COM, asks that server who&#8217;s responsible for Ycombinator.com, then asks that server what the address is for news.ycombinator.com. Having obtained the answer, the base station then responds to your client with the IP address for news.ycombinator.com, which is 174.132.225.106. Most IP addresses look like this: four numbers between 0 and 255. You can also force your client&#8217;s operating system to use a particular name server &#8211; OpenDNS (208.67.222.222, 208.67.220.220) and Google (8.8.8.8, 8.8.4.4) both offer high-quality free DNS resolution to the public which is often much better than you&#8217;d otherwise get and allows for some protection against malware and phishing.

(SIDEBAR: There is an updated version of IP called IPv6 that uses sixteen numbers, but it&#8217;s not very broadly used yet &#8211; because we&#8217;ve taken so long to adopt IPv6, we&#8217;ve basically run out of IP addresses in the current scheme, IPv4.)

The server needs to know what protocol we are trying to use to speak to it, so we pick a &#8220;port number&#8221; that indicates that we&#8217;d like to talk to the server over HTTP. HTTP uses port 80. (That number is somewhat arbitrary but is assigned by an international committee on a per-protocol basis.) HTTP sits on top of a lower-level protocol that makes sure that information arrives in the proper order and can recover from interruption &#8211; this lower-level protocol is called the Transmission Control Protocol, or TCP. TCP uses a &#8220;three way handshake&#8221; to make sure that the client and server are actually talking to each other before any higher level communication occurs. It starts with the client sending a hello to the server&#8217;s IP and port &#8211; this greeting is, for historical reasons, call a synchronization packet, or SYN. If the server is reachable and is running a program that is listening on the given port, the server will attempt to respond to the client with an acknowledgement, called a SYN-ACK. Finally, the client lets the server know that the SYN-ACK was received successfully with an ACK. At this point, the client and the server are now ready to begin communicating and the connection is said to be &#8220;open&#8221;.

In HTTP, the client speaks first (this is not the case with all protocols!). The client starts with saying what kind of request it is making, the request itself, the version of HTTP it is trying to speak, and several other request headers. In some cases, such as after submitting a form or when uploading a file, there&#8217;s also data attached after the headers. These request headers include the name of the user agent, any cookies associated with that website, and other information.

The server then issues an HTTP response starting with a response code &#8211; a three digit number that indicates success, a request for a redirect, or different kinds of errors. You may have seen &#8220;404 errors&#8221; on the web before &#8211; that is the code to indicate that a resource could not be found on the server. 200 is the code that indicates that the request was successful and the response will include the result. (There are many other codes.) The server response also has headers and then data.

To save time, the client is then free to make another request to the server over this connection without having to complete another TCP three way handshake. This is called &#8220;keep alive&#8221;. If, after a certain period of time, the client hasn&#8217;t yet made another request, the server will close the connection (by sending a TCP FIN packet to the client).

&nbsp;

# WEB SERVERS

Now let&#8217;s take a look at that program that runs on the server that listens for HTTP requests. The server must be able to piece together the request, figure out what to do, and transmit a response. If the request is for a file, say an image or logo, this is pretty straightforward &#8211; we check to see whether or not the file exists. If the file doesn&#8217;t exist, we send the client a &#8220;404&#8221; and we&#8217;re done. If the file does exist, we send the client a &#8220;200&#8221;, the length and type of the file, and then the file itself. This is called a &#8220;static resource&#8221; &#8211; anyone who requests that image will get the same image. More difficult are responses that are different depending on who asked &#8211; for instance, going to www.Facebook.com results in different information being displayed depending on whether you or your friend is currently logged in. Some code logic separate from the basic mechanics of a web server needs to evaluate &#8220;hey, is this person currently logged in, is it valid, and what information am I going to need to show to them?&#8221; This code is called a &#8220;web application&#8221;. Web applications can be written in many different programming languages, but it is popular to write them in environments where it&#8217;s harder to write bugs that can crash your server. (Server crashes can not only make your service unavailable they can sometimes be used to break into your server and steal information.) This is called a &#8220;managed&#8221; environment.

People get into religious wars about what server programming language is best to use, so suffice it to say there are several choices, each with their attendant pros and cons. In my experience, there are three general camps: the first is .NET programmers, who write in a language called ASP.NET or another called C# (pronounced &#8220;See Sharp&#8221;). C# in particular is viewed as a very nicely designed language but it only runs well on Microsoft servers, which in turn more or less require all of your servers to be running on Microsoft. This is not very popular in Silicon Valley.

The second camp is Java programmers. Since Java has been around for over 15 years now, there&#8217;s a lot of history and a big community around the language, with many different and sophisticated techniques for programming server applications. Culturally, however, it&#8217;s rare to see hip startups using Java &#8211; most of the Java code I see these days is at larger and enterprise-oriented companies. Part of this is that there has been time to develop careful engineering methodologies for building and testing Java code using large teams.

Finally, there is the camp of those who are using interpreted server languages, such as PHP, Ruby, Python, or Javascript. I&#8217;ll break each of these sub-camps down, though I should note that these camps share more in common with each other than they do with Java or .NET.

A decade ago, a language called PHP was pretty popular, and it is still in very wide use. Facebook, Wikipedia, Yahoo, and Zynga use PHP to write most of their server code. There are a lot of people with PHP programming experience, so it&#8217;s pretty easy to hire them or find code examples. That said, there are many people who really dislike PHP due to inconsistencies within the language (which grew very organically from cramming many different libraries together) and find it inelegant and difficult to use in very large projects.

A very clean and sophisticated language called Ruby was created way back in 1995 by a Japanese programmer, but it didn&#8217;t become very popular until 2005, when a Chicago design agency published as open source a clever way of writing clean, powerful web applications in Ruby. They called this set of code and libraries &#8220;Rails&#8221;. (A combination of code and libraries that offer a way to program an application is called a &#8220;framework&#8221;.) Rails introduced a number of concepts that make it fun and easy to program. Many of these concepts have since been copied into other languages and frameworks.

There is another very nice programming language called Python that is very popular inside Google. It is a nice mix of being relatively easy to learn but sophisticated at the same time &#8211; many of the smartest nerds I know prefer to write their most interesting code in Python.

Finally, it has become very popular in the last two years to write server applications in Javascript, using a framework called Node.js. Javascript is actually a totally different language from Java. It has no relationship to Java at all! Code for Node.js is written in a special way that forces you to not cause the server to twiddle its thumbs needlessly waiting (called &#8220;blocking&#8221;). This is very different from how applications in many other environments work, where it is very difficult to avoid accidentally blocking. As a result of this, it&#8217;s possible to write code that serves tens of thousands of people at the same time on a single machine, whereas that is hard to do with e.g. PHP.

&nbsp;

# DATABASES

Once you have written your application, you generally need to be able to store data somewhere. If people can sign up for your service, you&#8217;ll need to save people&#8217;s username, password, profile picture, and basic information. The place where you keep this information around is called a &#8220;database&#8221;. It used to be very popular to use one particular kind of database called a &#8220;relational database&#8221;. Almost everyone in the startup community used a database called [MySQL][1], though some (like Instagram!) used another one called [Postgres][2]; people at larger companies used relational databases from IBM (DB2), Oracle, or Microsoft (SQL Server). There&#8217;s also a very tiny SQL database called [SQLite][3] that&#8217;s easy to embed inside other programs or for very lightweight needs and is popularly used in that way.

There is a Standard Query Language (SQL) that one uses to talk to a relational database. You can INSERT information into the database, or REPLACE or DELETE it, or if you&#8217;re looking to ask it questions you can SELECT information from it. Information is stored in TABLEs that you can think of as Excel sheets &#8211; there are labeled columns and any number of rows of information. You SELECT what columns you want to fetch (or * for &#8220;all of them&#8221;) FROM which table and then WHERE certain criteria are met. Let&#8217;s say you wanted to get a list of all of the names and email addresses of the thirtysomethings using your service so you could send them an email about how to avoid getting gray hair. You&#8217;d &#8220;SELECT name, email FROM users WHERE age >= 30 AND age < 40&#8221;. Fun fact: the airport in San Carlos, CA &#8211; just south of Oracle &#8211; has the airport code [SQL][4].

There are other ways to store and manage information, however. Sometimes you don&#8217;t need something as fancy as a relational database. For instance, you might need to check whether or not a user is currently logged in &#8211; you need to be able to check this quickly or every page on your site will be slow. You might store a &#8220;sessionID&#8221; and when it is &#8220;validUntil&#8221;. When a client presents you with a sessionID, you just need to check to see whether you know about the sessionID and whether it&#8217;s still valid. If it isn&#8217;t, you send the user to a login screen. Because you want to be able to check this information very quickly, it could be a good idea to store it in memory without writing it to a hard drive &#8211; memory is often thousands of times faster than hard drives. Of course, if the power goes out, after the server reboots everyone is going to need to log in again, but this is not a really catastrophic failure. This kind of setup is served with an &#8220;in-memory key-value store&#8221; such as memcached or Redis. A database like MySQL spends a lot of its time &#8220;parsing&#8221; SQL, but a simple database like memcached can use a much simpler protocol and therefore run much faster than talking to MySQL via SQL. Consequently, databases that use simpler protocols than SQL are popularly called &#8220;NoSQL&#8221;, also implying that the database is likely not relational.

Also popular are &#8220;document oriented databases&#8221; which have much less rigid definitions around how the data should be stored and organized. [MongoDB][5] is one of the most popular of these, though [CouchDB][6], and [Cassandra][7] are both in common use. The kind of flexibility afforded by document oriented databases can make it easy to rapidly develop sophisticated applications, though there have been complaints about how some of these databases perform when under very heavy load (e.g. if your website suddenly becomes very popular).

&nbsp;

# CLOUD

All of this above was written assuming that you are running your own server. This used to be pretty common to do. The most popular kinds of servers look kind of like extra large pizza boxes. They are exactly 19&#8243; wide,  little more than an inch tall, and quite long. They were this funny shape so you could stick a lot of them on top of each other, bolting them to vertical rails 19&#8243; apart. You&#8217;d put a rack full of servers in a place with a really fast Internet connection where other people would also have racks full of servers. Since you are all putting your servers in the same place, these places are called &#8220;colocation centers&#8221;. If you are a really enormous Internet company, you need so many servers that it makes sense to build your own facility, or &#8220;datacenter&#8221;. [Apple][8], [Google][9], [Microsoft][10], and [Facebook][11] have all built their own datacenters, generally where electricity is cheap and plentiful, like near hydroelectric facilities.

But it&#8217;s hard to manage your own servers, particularly if you suddenly need a lot of them. So a few companies allow you to quickly ask to have access to new servers, use them for a bit, and then stop using them, and only pay by the server-hour. This ability to rapidly scale up and down the amount of computing power you need is called &#8220;elastic computing&#8221;. [Amazon][12] has the most popular cloud offering, but many other companies offer elastic compute services, including [Microsoft][13] and [Rackspace][14]tags.

These elastic compute services are still quite low-level, however. You usually start off with what appears to be a very bare operating system installation and have to install all of the programming languages and modules and environments you are going to need to actually run your application. While in reality there are many of these &#8220;virtual machines&#8221; running on a single server, a special operating system called a &#8220;hypervisor&#8221; manages running all these operating systems and makes sure that they can&#8217;t see what each other are doing. You&#8217;ll generally get a randomly assigned IP address for your instance &#8211; if you want to build a service that&#8217;s exposed on the web, you&#8217;ll probably have to register at least one static IP and point the name you want at that IP. This usually costs a very small amount extra.

It&#8217;s surprisingly hard to usefully add dozens of servers to speed up your service. If an application is performing slowly because it is trying to write to a database a lot, adding more computing power is not going to help it. Surprisingly, even adding more database servers won&#8217;t necessarily help, since if you&#8217;re bottlenecked on writes and all the servers need to stay up to date, they&#8217;re all now going to be bottlenecked on writes. You need to &#8220;partition&#8221; the problem, so that some writes go to one database server and others go to another. Figuring out how to smoothly partition data in a way that you can easily add and remove servers to make your database more or less powerful is a bit of an art. As a quick sidebar, because these are intellectually exciting challenges, many people immediately want to jump in to figuring out how to make an application &#8220;scalable&#8221; without first ensuring they are building a popular application &#8211; i.e. one that will need to scale. An old saying is that &#8220;premature optimization is the root of all evil&#8221;. Instead, scale your solution as you need. Two great reads on this are the [LiveJournal presentation][15] about how Brad Fitzpatrick scaled LiveJournal from one script run on a shared server to a sophisticated multirole cluster (building now-vital parts of Internet infrastructure like memcached and mogilefs in the process), and the [Instagram presentation][16] about how two guys with no backend experience built a service used by tens of millions without hiring very many people.

Some services like [Heroku][17] and [CloudFoundry][18] take care of some aspects of scaling for you, helping make sure that your operating system and software is up to date and secured and that you can seamlessly &#8220;dial up&#8221; and &#8220;dial down&#8221; computing resources without having to be a whiz. Naturally, these services are more expensive &#8211; many themselves run atop elastic compute services like Amazon&#8217;s.

&nbsp;

# BROWSERS

Now back to the client. We&#8217;ve got our data from the server that we asked for…what now? On the web, the data that we&#8217;re expecting to get back for a web page is a text document formatted as HyperText Markup Language. On most web browsers you can &#8220;View Source&#8221; as easily as right-clicking on a web page to read through the document that the server returned to you. This document contains a header and the body of the content. By default, whatever is in the body of the document will be displayed in your web browser as text. With HTML you can &#8220;tag&#8221; certain chunks of text. Tags have a beginning and an end. If a web browser has no idea what a given tag means, it will just ignore it. Tags are generally structural (here is a new paragraph), images (display a picture that you should get from this location), stylistic (make the following words bold), or script (run the following Javascript program in the browser).

<pre>&lt;html&gt;
 &lt;head&gt;
  &lt;title&gt;A Web Page!&lt;/title&gt;
 &lt;/head&gt;
 &lt;body&gt;
   &lt;h1&gt;Hello!&lt;/h1&gt;
   &lt;p&gt;This is a &lt;b&gt;web page&lt;/b&gt;, wow.&lt;/p&gt;
  &lt;/body&gt;
&lt;/html&gt;</pre>

The web browser parses the document &#8220;tree&#8221; (tags can be nested inside each other) and all of its tags and stores it in an in-memory database of its own, called the Document Object Model (DOM). The browser then figures out how to style the information to be presented in the DOM and then renders it to the screen. Browsers also know how to run Javascript code given to it by the server. This code is run in a very limited environment &#8211; for example, it can&#8217;t look at what&#8217;s on your hard drive and it stops running immediately as soon as you close the web page. Modern web browsers have competed vigorously on how quickly they can run Javascript code and the result has been an astonishing improvement in only a few years. Very sophisticated programs can now be run in the browser that would have been unthinkable only five years ago. Browsers continue to rapidly grow more sophisticated, in the last two years allowing access to web cameras, phone accelerometers, GPS, and 3D hardware. The code itself can be included inline in the HTML using the <script> tag and you can also include whole scripts to be fetched from other locations.

Javascript code running in the browser can create new connections back to the server to ask for updates or to let the server know when the user has done something like click a &#8216;Like&#8217;. If new information is available, the script can add it to the DOM, which results immediately in a re-render and the user seeing new information on their screen. This ability for the code running in a web browser to communicate with a server without needing to change web pages (called &#8220;AJAX&#8221;) revolutionized web application design circa 2005.

Javascript is an unusually changeable language. You can change how ALL objects act, for instance, or just one particular object. As a result, some libraries so fundamentally change how Javascript works that after including the library the way you program is almost like using a different language. One of the most popular client Javascript languages is called jQuery and it very much changes the language in ways that make it very easy to perform powerful DOM queries and manipulations and AJAX queries. Code that would have been lengthy and error-prone in &#8220;pure Javascript&#8221; can often be done simply and concisely with jQuery.

Finally, the browser needs assistance in figuring out how to render the DOM &#8211; what font should be used for the text? How much whitespace should precede a paragraph? What color should the background be? While browsers have defaults for all of these, a web page can provide a so-called &#8220;Cascading Style Sheet&#8221; (CSS) to inform these rendering decisions. CSS is a text language of its own, different from HTML and Javascript, that specifies parts of the DOM to match and the appropriate rendering rules to use for those matching parts. More specific rules will override less specific rules. CSS has also continued to get increasingly sophisticated, now including animated transitions between parts of the page and 3D actions.

An old adage is to &#8220;separate code, content, and layout&#8221; for cleanliness. The modern web allows us to do this by separating Javascript (code), the DOM (content), and CSS (layout).

&nbsp;

# LOCAL

One of the reasons why Macs are so popular in the Silicon Valley programming community is that under the hood they are running a kind of operating system called Unix, which is the same kind of operating system most servers run. You can open up the Terminal application and you have got a real, honest-to-goodness command line! This means that you can actually run the very same software that would be running on your servers right there on your lap. This has become a very common way for people to code. That way you can write your server code very quickly, without needing to be connected to the Internet at all &#8211; once you are confident that the code changes you&#8217;ve made are good, you &#8220;commit&#8221; those changes to your repository and &#8220;push&#8221; the new code to your server(s).

It&#8217;s been best practice for some time to use a code revision control system to make sure that if you screw up, you can go back to a version that worked, and to allow many people to work on the same set of code at the same time. While many free and commercial offerings for revision control are in use, these days, a system called &#8220;git&#8221;, created by the inventor of Linux to help manage the development of Linux, has become king of revision control systems. An unaffiliated commercial web service called GitHub makes it easy for people to share the code they are working on with others and to store a copy of your code as you work on it. GitHub is so popular that it&#8217;s common for companies to look up engineering applicants&#8217; accounts on GitHub to review their submissions.

&nbsp;

# CONCLUSION

If you want to learn to program for the web, you should probably find a web host that works for you and learn a server programming language, HTML, CSS, and a client programming language. Given that you can basically only use Javascript as your client programming language, I might personally suggest node.js as your server programming language since that way you&#8217;ll only have to learn one language. This overview is probably not enough to get started but should hopefully give you enough of a feeling for how the whole thing works that you can orient to the materials you&#8217;ll need!

_See further discussion on [Hacker News][19]._

 [1]: http://www.mysql.com/
 [2]: http://www.postgresql.org/
 [3]: http://www.sqlite.org/
 [4]: http://www.co.sanmateo.ca.us/portal/site/publicworks/menuitem.eb28a0c3ab8a060d82439054d17332a0/?vgnextoid=6586b6adeb41f110VgnVCM1000001d37230aRCRD&vgnextfmt=DivisionsDetail&cpsextcurrchannel=1
 [5]: http://www.mongodb.org/
 [6]: http://couchdb.apache.org/
 [7]: http://cassandra.apache.org/
 [8]: http://gigaom.com/cleantech/the-story-behind-how-apples-icloud-data-center-got-built/
 [9]: http://www.google.com/about/datacenters/
 [10]: http://news.cnet.com/8301-13860_3-10371840-56.html
 [11]: http://gigaom.com/cleantech/a-rare-look-inside-facebooks-oregon-data-center-photos-video/
 [12]: http://aws.amazon.com/
 [13]: http://www.windowsazure.com/en-us/
 [14]: http://www.rackspace.com/cloud/
 [15]: http://www.danga.com/words/2005_oscon/oscon-2005.pdf
 [16]: http://www.scribd.com/doc/89025069/Mike-Krieger-Instagram-at-the-Airbnb-tech-talk-on-Scaling-Instagram
 [17]: http://www.heroku.com/
 [18]: http://www.cloudfoundry.com/
 [19]: http://news.ycombinator.com/item?id=4817103