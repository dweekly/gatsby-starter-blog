---
title: An Overview of Digital Audio
author: dweekly
type: post
date: 1999-03-16T21:01:38+00:00
url: /an-overview-of-digital-audio/
categories:
  - Uncategorized

---
_sponsored by [Audio Explosion][1]_

So you may or may not have heard, but there&#8217;s been some buzz in the media concerning digital music. There&#8217;s all sorts of talk of &#8220;pirates&#8221; and startups and copyright and something called &#8220;watermarking&#8221; and a big organization called the [RIAA][2]. Here&#8217;s what&#8217;s going down with the software scene:<a name="RealAudio"></a>

### <a name="RealAudio"></a>RealAudio

It&#8217;s possible, likely even, that you&#8217;ve heard digital audio samples through the Internet in [RealAudio][3] format. RealAudio is the most popular form of audio on the Internet and has been around for a few years. RealAudio fiiles start playing right away regardless of how long the piece goes for. This is its advantage and disadvantage. RealAudio works by playing back the audio a chunk at a time &#8212; this is called &#8220;streaming.&#8221; When you click on a four hour long RealAudio file, it doesn&#8217;t grab it in its entirety but instead just downloads the first few seconds. It starts playing this music back as it goes out and grabs the next few seconds of audio. On the plus side, music starts coming out of your speakers right away. On the minus side, the music only sounds as good as your network connection is fast. If you are connected to the Internet very slowly, like over a 14.4k modem, the music will be of very poor quality, because your connection will not be sufficient to download enough information about a given second of music to make it sound good. If you have a faster connection to the Internet at your work or in your dorm room, you can listen to higher-quality music. To try to reach as many people as possible, most music sites that use RealAudio do so in a manner that sounds acceptable to someone listening on a 28.8k modem. While this is enough to convey the gist of a song it is not, as you may have noticed, of pleasant quality.

### .WAV / .AU

You may have seen some files laying around that end in .wav or .au. The ones that end in .au probably don&#8217;t sound that great, and the ones that end in .wav are usually huge for even just a small snippet of audio. This is because .wav files are not generally compressed at all and .au files are compressed poorly and with low sound quality. CDs actually store audio uncompressed, so it&#8217;s pretty straightforward to take audio from a CD and store it on a hard drive as a .wav file. (There are a number of programs out there on the Internet to do this, called &#8220;CD Rippers&#8221;)

### Liquid Audio

A California company called [Liquid Audio][4] came up with a new, protected audio format that uses a slightly improved version of the compression algorithm found in RealAudio (it&#8217;s called Dolbynet). It allows for secure purchase and distribution of digital music and lets you burn your downloaded song onto exactly one CD-R. It has not, however, hugely taken off over the two years or so that the company has been around, despite many marketing efforts. This is largely because the encoding tools and server are complex, cumbersome, and expensive and few people already have the player.

### MP3

MPEG-1/2/2.5 Audio Layer 3 (also known by its file extension, MP3), is a high-quality compression algorithm co-invented by Thompson Consumer Electronics and [Fraunhofer IIS][5]Commercial Research Institute. It was engineered in 1992 as a way to allow audio to be transmitted in realtime at near-CD quality over ISDN (128kbps) and satellite lines. The algorithm was extremely computationally difficult to run, and it wasn&#8217;t until about two years ago that an average user&#8217;s desktop had enough CPU power to let them listen to MP3s. Fraunhofer happened to notice in late 1996, and released an MP3 encoder (L3ENC) and Windows player (WinPlay3) as shareware on their site. Some people noticed, tried it out, told their friends, and the MP3 community exploded overnight. Now with an estimated 10 million people worldwide (and growing) listening to MP3 files, MP3 has become the most popular underground format on the Internet. There are many excellent MP3 players out there (I may review some in a later column), but most notably [WinAMP][6] and [Sonique][7]. Fraunhofer naturally makes one of the highest-quality encoders (sold through [Opticom][8]) but [Xing][9] is known for its extremely high-speed encoder. Xing&#8217;s encoder, now called[AudioCatalyst][10] was recently lumped together with some nifty tools that allow you to just put a CD into your Mac or PC drive, press a button, and come back a few minutes later to a stack of neatly titled MP3s on your hard drive. Not a bad buy for [$30][11]. I remember when Fraunhofer was trying to peddle their shareware encoder for a few hundred US$&#8230;

### AAC

MPEG-2 Advanced Audio Coding (AAC) was developed by Fraunhofer, [AT&T][12], and several others as the next generation of audio encoding beyond MP3. AAC could be thought of as &#8220;MP4.&#8221; Unfortunately, Fraunhofer and others have decided to not release the complete specification. Why? Fraunhofer had received an enormous amount of flak from the recording industry when the released specifications of MP3 were gobbled up by applications programmers and released on the consumer market: the technology allowed consumers to easily copy and share high-quality digital audio. Fraunhofer was not eager to find itself labelled as a company that made tools for pirates, and decided to not release AAC so as not to make the same mistake twice. For this reason, there are no public high-quality AAC encoders or players. (AT&T&#8217;s [a2bmusic][13] is in fact the only source of AAC files; they will be covered later.)

### VQF

[NTT][14] (Nippon Telephone & Telegraph, Japan&#8217;s version of AT&T) had been working on new ways to squeeze very high quality voice data efficiently through their networks. They invented [TWINVQ][15] (Transform-domain Weighted INterleave Vector Quantization) as a new way to compress data. TwinVQ compression works very differently from MP3 and is not based on the MPEG/ISO standards. TWInVQ files are saved with an extension of .VQF, hence the other, shorter, name for the format. VQF is superior to MP3 audio, capable of producing very crisp sound at 80kbps: better sound with 30% fewer bits. AAC is slightly better than VQF, but not by a large margin. [Yamaha][16], who has licensed VQF technology from NTT, has not [yet] pushed to heavily market VQF in the United States. Kobe Steel, incidentally, will be releasing a portable .VQF player in 1999.

**[[read my review][17]]**

<a name="crypto"></a>

### <a name="crypto"></a>Encryption/Watermarking

> &#8220;History has taught us to never underestimate the amount of money, time, and effort someone will expend to thwart a security system.&#8221;
> 
> &#8211; Bruce Schneier, Author of _Applied Cryptography_

Several companies have made quite a fuss about encryption and watermarking. The basic idea is that encryption will scramble a digital audio file in such a way that only people who have validly purchased the music can listen to it, and watermarking will allow officials to trace illegal audio distribution back to the pirate who first copied a piece of music. While on the outside, such standards may seem reasonable, they remove a large number of consumer rights that we take for granted. Books may provide a suitable metaphor for me to demonstrate the Huxlian horror that may soon be upon us: what if there were no libraries? What if at a bookstore, every book was shrinkwrapped and could not be returned? What if letting someone borrow your book was a criminal offense? While these scenarios appear patently ridiculous in regards to books, they would become reality if tight encryption technology were to survive.

Thankfully, they cannot. Fundamentally, audio encryption for playback on a computer is a narrowminded idea. In the 1980&#8217;s, software companies tried very, very hard to implement complex protection schemes that would prevent any piracy at all. Unfortunately, the plan backfired: the more difficult a program was to &#8220;crack,&#8221; the more prestige was given to the individuals that cracked it. It became a challenge, a race, to see who could crack a program first. Engineers that had spent months on protecting a video game or a word processing application would see cracked versions floating around mere weeks, if not days, after the product was released. They gave up. Software companies simply could not afford to be spending all of their money on protecting programs, so most decided to drop the issue altogether. The moral of the story is that it is unlikely that the music industry will be able to suddenly come up with a magic formula that will still afford consumers the rights they currently have, satisfy artists, and protect against piracy. People still buy software, even when it is available freely from the digital underground. Microsoft is not going out of business. Time-Warner, Virgin Records, and Atlantic aren&#8217;t going to go out of business even if all of their music was available freely and illegally. Which is good, because it&#8217;s equally unlikely that they&#8217;ll be able to stop it.

 [1]: http://www.audioexplosion.com/
 [2]: http://www.riaa.com/
 [3]: http://www.real.com/
 [4]: http://www.liquidaudio.com/
 [5]: http://www.iis.fhg.de/amm
 [6]: http://www.winamp.com/
 [7]: http://www.sonique.com/
 [8]: http://www.opticom.de/
 [9]: http://www.xingtech.com/
 [10]: http://www.xingtech.com/mp3/audiocatalyst
 [11]: http://www.buydirect.com/Product/Detail/1,1068,s0-2-1-3095,00.html
 [12]: http://www.att.com/rock
 [13]: http://www.a2bmusic.com/
 [14]: http://www.ntt.co.jp/
 [15]: http://music.jpn.net/
 [16]: http://www.yamaha.com/
 [17]: http://david.weekly.org/writings/solidaudio.php3