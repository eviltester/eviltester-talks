# Mobile Web Testing — Transcript

Technical Web Testing 101 · Alan Richardson

**Video range:** [04:58:19–05:23:24](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=17899s)

Edited from YouTube's automatic English captions to correct obvious recognition errors, spelling and sentence breaks. Chapter headings follow the published video timings; paragraph links locate the edited passages in the full recording.

[Section overview](readme.md) · [Summary slides](slides.md)

## Contents

- [04:58:19 — Viewing mobile phone device traffic using a computer proxy - Fiddler](#chapter-01)

- [05:03:42 — Viewing mobile phone traffic using a computer proxy - Burp Suite](#chapter-02)

- [05:06:30 — Viewing iOS traffic using a computer proxy](#chapter-03)

- [05:09:06 — Android Mobile VMLite VNC Server Demo](#chapter-04)

- [05:10:49 — Android Mobile VMLite VNC Server Overview](#chapter-05)

- [05:15:38 — How to emulate mobile devices using Chrome browser](#chapter-06)

- [05:20:02 — How to view iOS Device Screens on a Windows PC](#chapter-07)

<a id="chapter-01"></a>

## 04:58:19 — Viewing mobile phone device traffic using a computer proxy - Fiddler

**[04:58:40](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=17920s)**

Hi, this is Alan Richardson from eviltester.com. I'm going to show you how to connect a mobile device through a debug proxy on your laptop or desktop. Now, this is really useful to start seeing the web traffic that's coming through on your mobile device that you normally don't have visibility into. So here you can see there's some traffic coming through Fiddler.

**[04:59:05](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=17945s)**

Now I've connected to my phone via VNC here. So this is actually my phone and this is all the traffic coming through on my mobile device here. So I'm just going to show you how to set this up so that you can do this too. Now it's not really that hard. All we have to do is a couple of things which is figure out the right IP address for our desktop. Change the proxy settings on our phone. Make sure that our proxy on the desktop or laptop actually allows external connections from another machine and make sure that our mobile device and our laptop or desktop are actually on the same wireless network.

**[04:59:40](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=17980s)**

So I normally have my phone connect to Wi-Fi, which is what's going on here. And then my laptop or desktop are connected into the same network either through Wi-Fi or wired. It doesn't really make any difference. So the steps that I do are I'm going to use Fiddler as the example. It's nice and simple. So Fiddler's running other things I do is I go into tools Fiddler options and I check in the connections that allow remote computers to connect is actually selected.

**[05:00:10](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=18010s)**

If it isn't, Fiddler will block the connection request and you won't be able to debug through. So this one's really important. The other thing I have to make a note of is the port that Fiddler is running on. Next thing I'll do is I'll go into a command window and I'll run the ipconfig command.

**[05:00:29](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=18029s)**

Now you can see that I have a lot of IP addresses coming up here mainly because I've got the wired connection as a wireless connection. Got a whole bunch of virtual machine connections. So sometimes the hard part is working out which IP address you need to connect to. Now the way I basically do it is pretty much trial and error until you get used to it. So the first time I tried to connect, I used this one because Ethernet local adapter connection didn't work.

**[05:00:54](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=18054s)**

So I drop down here and this is actually the real one, the Ethernet adapter. This is the IP address I would connect to. So having found those bits of information, the IP address we're on, the port that our debug proxy is working on, then we go off to our mobile phone. So, if I go into this an Android phone, you can see that fairly simply enough. Go into settings off to Wi-Fi. Pick the wireless network you're connected to. On Android, you do a long press there.

**[05:01:31](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=18091s)**

Modify the network config. Make sure the proxy settings are set to manual. In fact, first thing to do is make sure you tick the show advanced options. Otherwise, you won't see any of the proxy stuff. So, show advanced options to see the proxy information, proxy settings to manual. Then, in the HTTP proxy, put in the IP address that your machine is on. So, here you can see 192.168.1.131. That's what I put in there. Then the port for my debug proxy, 8888 goes in there.

**[05:02:03](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=18123s)**

Save that. Now, the browsers on this phone should be connecting through into Fiddler. So, if I get the default browser up, there's my main web page. Let me clear out the traffic here from Fiddler. That's the control X to clear out the traffic. Then, let's have a quick look at one of the pages on my site. And you can see the request starting to go through now.

**[05:02:33](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=18153s)**

Now because it's a debug proxy, I can look in the request and I can see that my phone the user agent in the default, AppleWebKit. It's got the mobile Safari stuff. So it's trying to be a mobile browser. That's the built-in one. If I head off to Chrome, what I found is that by default Chrome and Firefox and the inbuilt browser work pretty seamlessly. Dolphin had a couple of issues getting started, but wasn't that hard. There's Chrome. Just thought I'd show you all the apps that are installed in my Android.

**[05:03:14](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=18194s)**

So, here's Chrome. And if I visit the seleniumsimplified.com site there again, we can see the traffic starting to come through. So, that's pretty much it. You may have some issues if you try and use another application. If it's a native app, then it may not connect through in the same proxy settings. It might, you might get lucky, it might not. In the past, we've had to hack about a little bit and I vaguely remember having to use some ADB port redirects in order to get that working.

**[05:03:41](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=18221s)**

But I haven't done that for so long. I'm not going to demo that here. But it's not hard at all to get your normal in-built browsers just going through a debug proxy on your browser.

<a id="chapter-02"></a>

## 05:03:42 — Viewing mobile phone traffic using a computer proxy - Burp Suite

**[05:04:03](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=18243s)**

Okay, now a quick look at using Burp Suite with our mobile device. So, you can see I've still got the mobile device attached via VNC. If you haven't watched the Fiddler video, you should watch that first because it covers the basic setups for the mobile device I'm using. So for Burp, remember I go in to the normal command line window, do an ipconfig to work out what my IP address is.

**[05:04:31](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=18271s)**

I'm going to start a Burp. Okay, this is Burp running. Now in Burp, all our proxy options are under proxy options. First thing we're going to do though in Burp is remember to switch intercept off. Otherwise, we'll start blocking our traffic before we do anything. Now, with Burp, one of the things I find very useful is because I've been using proxies because I probably messed around with them is resetting the proxy defaults before I do anything because periodically I'll find that I've been chaining proxies.

**[05:05:12](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=18312s)**

Is there something in the redirect? Just by setting it to the defaults, we remove a whole bunch of problems. So you can see here that my Burp Suite is running on an interface 127.0.0.1:8080. Now what I really want to do edit it is not do loop back only but to run on all interfaces. So if I say okay now it's going to say are you sure because other people in network can do it and go yes that's pretty much exactly what I want to do.

**[05:05:42](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=18342s)**

So I will unblock Java from it. Now if I go back to my phone now you can see that we're running on 8080. So in the port proxy settings I want that to be on the IP address I'm running on which is 13 1. Here we go. 192.168.1.131 port 8080. Save that. Now if I send a request through that request has gone through and there we go in the history I can start seeing all the messages coming through. And got the headers and the user agent that's coming from the phone.

**[05:06:33](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=18393s)**

So there's no real complexity in there. Burp Suite is running exactly the same way as it did before. But now we have our requests coming through.

<a id="chapter-03"></a>

## 05:06:30 — Viewing iOS traffic using a computer proxy

**[05:06:51](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=18411s)**

Hi, I'm going to very quickly show you how to set up a proxy on an iPad. So here in the real world is my iPad. I'm mirroring the screen on the computer, the recording for you. So, if I go off to Safari now, start browsing the web, there's no traffic coming through Fiddler, right? There is some stuff coming through Fiddler, but that's just irrelevant nonsense, not from the iPad. So, if I jump back out here to settings, I'll go into Safari, clear the cache to make it easier.

**[05:07:26](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=18446s)**

Right now I go back up to my Wi-Fi. I choose the little information icon next to the Wi-Fi. And you can see down here on the bottom there's the HTTP proxies. I set that onto manual. Now because I'm on Windows, I will go into a normal command line and get an ipconfig again to see what my IP address is. And I'll type that in the server port. So I'm on 192.168.1.39. Then Fiddler is running on port 8888. There's no authentication. Let me come out that back to Safari.

**[05:08:14](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=18494s)**

Let me get this window out the way. Now, if I go off to Apple now, we should see all the Apple traffic coming through from the actual iPad. So, there's nothing complicated there. All these settings are pretty much the same as ever. All we do is choose the right proxy. The hard part is really finding out the IP address.

**[05:08:32](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=18512s)**

Now, sometimes when I'm testing iOS, I find that the iOS doesn't really want to connect to the Wi-Fi that I'm using. Oddly enough, I don't know why. However, in those circumstances, I create a local hotspot on my laptop using something like connectify.me, connect the iPad through that, then they're on the same network. It's easy to get the IP addresses and then I just proxy all the requests through again. So, nice and simple. The iPad can connect through to Windows machines or any other machines that are running proxies, letting you debug the traffic.

**[05:09:07](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=18547s)**

And we can see here in the inspectors the headers all the user agents are doing the iPad ones.

<a id="chapter-04"></a>

## 05:09:06 — Android Mobile VMLite VNC Server Demo

**[05:09:29](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=18569s)**

So I just want to introduce you to a tool that I use called VMLite. Now you can see here here's my phone. This is my phone. I'm using a highly sophisticated camera setup here. This is my webcam, taking off the computer monitor and I'm pointing at my phone and trying to capture my monitor at the same time. So, you can see here my monitor that we've got a little window here with VNC viewer on it. And here is my phone down here.

**[05:09:55](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=18595s)**

And when I start doing things on my phone, the same thing is reflected up on the monitor screen. let me zoom into there. You can see it's zooming up on the screen hopefully. even if all you can see is blurry stuff, you can see that there's blurry stuff happening on my phone and very similar blurry stuff happening up on my computer screen. The other thing I can do, of course, is because it's VNC, I can control my phone from the desktop computer that I'm connected to.

**[05:10:23](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=18623s)**

So, on the monitor, I will start clicking things. I'm going to click on What should I click on? Now, I don't expect games are going to work very well, but if I put on Gravitron, hopefully we'll at least see. Yep. So, there it all moved over there. It went in a landscape mode. Stuff is happening. There's refresh rate issues going to happen on VNC. But basically, you can see that whatever I've done on the computer has happened on the phone. What's mirrored on the phone has happened on the computer. I find this very useful for mobile testing because I can do a lot of data entry through the actual computer. Okay.

<a id="chapter-05"></a>

## 05:10:49 — Android Mobile VMLite VNC Server Overview

**[05:11:11](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=18671s)**

So, no more webcam, no more shaky cam evil dead type footage. So, I'm going to show you VMLite. VMLite. There's the website vmlite.com. It's an Android app and it has a desktop client. What I really like about it is it works on non-rooted devices, which is very important to me when I'm testing on client site and typically the devices are not rooted or rootable.

**[05:11:36](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=18696s)**

What we get then, so I've got my phone connected via USB cable here. Now I can basically start and stop a VNC server on the phone from the desktop computer. That's how we bypass the root requirements on Android. So we have a very small app. All it does is start and stop the VNC server. You can see some IDs. You can also connect over USB. At the moment I am connected over USB for the VNC. The VNC connection doesn't have to be done over USB.

**[05:12:07](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=18727s)**

We can do it over the Wi-Fi network and put in the normal IP address for the port. But I'm doing it over USB because if I'm feeding my phone through proxies to do testing, then the VNC over the Wi-Fi typically won't work. The ports will get clogged, something will go wrong. So, by feeding it through the USB, it means that I can access the view of the phone a lot easier and still have traffic coming through a proxy. So, you saw in previous lectures how we connect phones through proxies.

**[05:12:39](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=18759s)**

In order to do that with this, I also do a USB connection. Now, I still have access to all the normal VNC functionality over the normal local host connection. And this here where I'm viewing my computer is the TightVNC viewer. So, TightVNC is free. It's open source. It's a server for your desktop as well as a client. So, I have a theoretically I could connect my phone to my desktop and control my desktop over VNC using a VNC client on the phone or the tablet, but I'm using it in reverse here.

**[05:13:11](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=18791s)**

So, I've actually got a server. VMLite is a VNC server that runs on the phone. So, I can connect to it from my desktop. So, I'm using the VNC viewer here. Now, the viewer, the standalone viewers on your desktop tend to be a lot faster response when you're working with the phone. However, you can see here that I can connect to the following address while the Android devices connect with USB. I can do the same thing over Wi-Fi. It's just that it has the IP address of the phone in here.

**[05:13:44](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=18824s)**

So, if I do that, I'll get Chrome up again so you show you. So, I'm going off to localhost 5801, which is actually on my phone itself. And you can see here I've now got I've connected to the server on my phone. I can start a VNC viewer in HTML 5. Let's try that. So I haven't installed in the mic. This is the normal browser, but within the browser itself, I am connecting to my phone and controlling it and seeing all the different things that are coming through.

**[05:14:19](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=18859s)**

That's really really handy. It's a little bit slower than the VNC client, but very useful out of the box. Now, you can see there's also a Java applet VNC viewer. We'll see how we got on with this. It's not guaranteed to work brilliantly, because the applet permissions and things keep changing. So, permission run this time. Great.

**[05:14:41](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=18881s)**

Now, I've got a tight VNC over here. I haven't got any authentication in this server, so I can skip the password and just do okay. There we go. So now I've got a nice big window. Let's see if we can resize this. Okay. I can't see an obvious option with the Java one to resize. There probably is but it's not going to be particularly good for this particular demo. But the basic point is I can also connect over a Java applet.

**[05:15:14](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=18914s)**

Trust me I am doing things even in the applet. The HTML 5 one is a good compromise. I quite like using that. I use that a lot sometimes when I'm having to connect. But I primarily prefer the clients. I have much more control, much more configurability. And we can change the resizing. I use this for screen capture. I use this for data entry. I use this to help me work with the device without getting repetitive strain injury. If you can find a VNC client or a VNC server for your device, and I'm using VMLite on Android, I highly recommend it.

<a id="chapter-06"></a>

## 05:15:38 — How to emulate mobile devices using Chrome browser

**[05:16:00](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=18960s)**

And in this video, I will show you how to use the inbuilt Chrome browser functionality to emulate a mobile browser and conduct basic mobile testing using your desktop browser. We're going to use the emulation feature in Chrome. So, we have to start by using the overrides in the Chrome developer tool setting. Let's find that. So, the way I get to that is by right-clicking, doing an inspect element, and then the developer tools appear over here. I'll click settings. So, in overrides, I have to make sure that show emulation view and console drawer is selected.

**[05:16:34](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=18994s)**

Now, all the emulation functionality used to exist in here, but it doesn't. So, this video is going to show you how to find it. So, we've got emulation clicked. Great. So, now where is the console drawer? Well, if I close the settings now, in any of these tabs, in any of the developer tool windows, I can click escape and then I'll see the console drawer and then I can use the emulation tab.

**[05:16:59](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=19019s)**

Now, this is all getting a little bit small, so we'll zoom in on the screen. So, I'm going to select a device. I'm going to use the Samsung Galaxy Note 2 simply because I have a physical device of that on my desk. So, if any issues happen, I can try the same functionality on my device. So, I'm going to choose the device. I'm going to click emulate. And you can see the screen refreshes to a smaller size. This is a scaled version.

**[05:17:24](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=19044s)**

I can change that using the screen settings down here if I want to. Now, I've chosen the BBC site mainly because it has mobile detection and they try and support mobile as well as they can. I'm on the homepage of the BBC for a reason and I'll show you why in a minute. So, even though I selected device, we don't have the mobile site yet. So, I'll refresh the screen. I'll just hit Ctrl+F5. And then you can see we've been redirected to the mobile site because Chrome is now sending the correct headers for the note 2.

**[05:17:58](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=19078s)**

And now the issues. So let's try and use the site. So I'm going to click on more, which is a dropdown. I should see a drop down or sport or any of these redirections. They're not currently working. Now I don't know if that's Chrome or whether it's the BBC site, but if I change the sensors and choose not to emulate the touch screen so that mouse events are being sent, then I can start using the functionality again.

**[05:18:21](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=19101s)**

Now this all works fine when I do it on my Note 2. So presumably it's some sort of Chrome compatibility emulation issue. It doesn't really matter what the root of the problem is here for us. It just shows the problem of testing through emulation. When we find suspected issues, we have to replicate them on either a better emulator or using an actual physical device. But the Chrome emulation is so convenient on the desktop that for a first run check on the site and certainly checking how your server responds to mobile headers, this is a great first step.

**[05:18:53](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=19133s)**

Now you can stop the emulation by clicking the reset button. So I go back to the device, click reset, the screen refreshes. We're still on the mobile site. But if I do a refresh now F5, we're back on the main BBC side. And as a bonus, if you've watched the video this long, I'm going to show you what I thought was an emulator bug, but seems to be a BBC functionality by design or possibly a bug. Who knows? I was going to do this demo on the weather page because this is the UK and all we talk about is the weather and I wouldn't have to worry about any contentious news showing up.

**[05:19:29](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=19169s)**

But when I start on the weather page and set up emulation and do a refresh, I'm not redirected to the mobile site. Now, I recreated this on my phone and when I visit www.bbc.co.uk/weather, I see the desktop site. There is no redirection to the mobile site. So, what I thought originated from a Chrome bug turned out to stem from the BBC. They only redirect you when you're on the main homepage. Is that an issue or a feature? I don't know. You decide.

**[05:20:02](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=19202s)**

But Chrome emulation is a very easy way to run a first check on the site if you know how to access the functionality for the emulation, which you do now.

<a id="chapter-07"></a>

## 05:20:02 — How to view iOS Device Screens on a Windows PC

**[05:20:24](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=19224s)**

So, I've got two tools I'm going to show you here. both of them use AirPlay to let me share my iOS device screen on my desktop, which is really good for testing because I can do testing on the iOS device. I can project the screen onto my desktop computer and use the normal screen recording tools that I use on my computer. So here I'm using Camtasia to record my desktop screen. So I'm going to show you AirServer from AirServer.com and this is Reflector from airsquirrels.com.

**[05:20:55](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=19255s)**

Both of these tools are incredibly cheap. They're about $12.99 and $14.99 at the moment. And both of them do much the same thing. They act as AirPlay servers. So I'm going to switch on AirPlay. Mirror the device. And there we go. So here is AirServer running and it's showing you my iOS device there. So the way that the AirPlay stuff works remember is if if I just do a swipe up from the bottom of the screen, we've got our basic settings.

**[05:21:24](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=19284s)**

Then we can do the AirPlay off where you can see the Office Dell XPS there. That would normally say AirPlay if I haven't connected. Then I can use my iOS device as normal and we'll see the basic actions that I'm doing on the iOS device reflected on the actual desktop screen so I can record as I'm doing my testing.

**[05:21:44](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=19304s)**

Now it's hard to know which of these tools is the best here. This might not be the best demo. I'm pointing out these tools so that you can go away and have a look at them. So AirServer has quite a lot of options in it. Now I haven't used any of these settings. They seem to work fine. I'm just running this AirServer in demo mode here. AirServer comes with a 7-day demo. So if I shut down AirServer then move over to reflector.

**[05:22:14](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=19334s)**

So reflector comes with a demo where when you try it you essentially get 10 minutes of sharing time. So, if I go back to my iOS device, switch on AirPlay and mirroring, we should see that appear. There we go. Let me just resize this. Both of them, you can resize the window when they come through. And again, let's get rid of this.

**[05:22:40](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=19360s)**

Now, I found that reflector didn't require as much prerequisites, so I just I didn't need to install iTunes or anything else, but AirServer required iTunes. Once you've got those installed, it's fine. I think it's really going to come down to whichever one works best on your machine as to which one you use. But in terms of being able to see your device on your main screen and be able to capture it out the box, it comes with AirPlay. Therefore, we should try and harness that for our testing.

**[05:23:11](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=19391s)**

It's designed for Apple TVs, but both AirServer and Reflector act as AirPlay servers. So, we can project our devices onto that and we can basically do our testing. mess around in the actual device screen, record the testing that we're doing. I suggest you have a look at both tools, see which one works best in your particular environment, and then you can start recording your test sessions when you do them on device.

---

[Previous: Testing JavaScript from the Browser Console](../10-testing-javascript-from-the-browser-console/readme.md) · [Course overview](../../readme.md) · [Next: Mobile Testing with Wireshark on Mac](../12-mobile-testing-with-wireshark-on-mac/readme.md)
