# Mobile Testing with Wireshark on Mac — Transcript

Technical Web Testing 101 · Alan Richardson

**Video range:** [05:23:24–05:40:45](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=19404s)

Edited from YouTube's automatic English captions to correct obvious recognition errors, spelling and sentence breaks. Chapter headings follow the published video timings; paragraph links locate the edited passages in the full recording.

[Section overview](readme.md) · [Summary slides](slides.md)

## Contents

- [05:23:24 — An introduction to Wireshark](#chapter-01)

- [05:25:26 — Installing Wireshark](#chapter-02)

- [05:26:32 — Decrypting 802.11 Traffic](#chapter-03)

- [05:30:13 — An Android Wireshark Testing Session](#chapter-04)

- [05:38:50 — The philosophy of Wireshark](#chapter-05)

<a id="chapter-01"></a>

## 05:23:24 — An introduction to Wireshark

**[05:23:46](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=19426s)**

So, I'm just going to give you a quick introduction to Wireshark. Why am I going to talk about Wireshark in the context of mobile? Well, Wireshark is a network traffic observation tool, right? That's what it does. It sits down at your packet level, monitoring your network card, pulling the packets out, restructuring them, and showing them in different ways.

**[05:24:08](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=19448s)**

Now, sometimes when you're testing a mobile application, we've already seen that we can change the proxy on our device so the HTTP traffic can be sent through to our our HTTP proxy. Sometimes when you're testing a mobile application, although you've set the proxy, the application ignores that. The application doesn't use the proxy settings you set, but you're still testing that application over Wi-Fi. So, you can still observe the traffic that's being sent because you can hook into the Wi-Fi traffic and pull out the packets from that machine.

**[05:24:39](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=19479s)**

That's what Wireshark is going to do. This is a free tool. It's it can be really complicated to get your head around, but we're going to use it in its most basic form. Certainly, I don't know how to use it as a great tool, but I'm experimenting with this. This is something that I work with. This is something that I use when I'm test mobile. This is something that I have running when I'm in airport lounges. So, I can see the kind of thing that people look at when they're on their mobile phone in the airport lounges on their own.

**[05:25:06](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=19506s)**

And some of the traffic is quite scary and disturbing. It's also something that I can look at in hotel rooms. So, if I'm in hotel and I'm on hotel Wi-Fi, I can see what traffic people have. And that's quite interesting because people use their phone. They connect it to Wi-Fi. And some of these phone applications are not very secure. They give away quite a lot of information about the person. So, we know that we can monitor phone applications using this. So, that's what we're going to look at in here. It's basically just a tool for monitoring network traffic.

<a id="chapter-02"></a>

## 05:25:26 — Installing Wireshark

**[05:25:48](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=19548s)**

So the first thing we have to do is download it. It works on Windows and Mac and Linux. You can see here the Windows install is nice and easy. You can download it from a Mac if you go in here. I found that with Mac I had to install an X Windows server first.

**[05:26:06](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=19566s)**

I had to install X Quartz. So I had to install X Quartz because Mac OS no longer comes with Windows X by standard. Then I download the Wireshark and then I install it. I had some additional issues with it, but they they're all online. If you get issues trying to run Wireshark, basically type in Wireshark operating system the error message you're getting and you'll have some help for you. Hopefully, it'll work out the box and you'll have no problems. I haven't tried it on Linux, but I imagine the instructions on the Wireshark website are absolutely fine for Linux.

<a id="chapter-03"></a>

## 05:26:32 — Decrypting 802.11 Traffic

**[05:26:54](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=19614s)**

Other things I had to do because I'm running at home, when I'm in the hotel or when I'm in the airport, once my machine is connected to the network, it runs fine. When I'm at home, I've got encryption running over the top and all I can see is the 802.11 traffic. So again, on the Wireshark documentation, it shows you what you have to do in the preferences to configure 802.11 to be decrypted on your machine.

**[05:27:22](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=19642s)**

Now, in the next lecture, you're going to see me connect my Android device to my Mac using VNC, and that's just to record the video. And then I'm going to monitor some of the traffic and you're going to see that I had to fiddle with the 802.11 preferences a little bit. Wireshark can be a bit tricky to get running out the box. It the thing is it is an enormously powerful tool and lets us do things that we can't normally do because what you're going to see me do is see the traffic for my Android device without the Android device being set up with a proxy and without it being connected to my machine.

**[05:27:58](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=19678s)**

Because the point is we know that applications are sending out traffic. We want to be able to monitor that traffic and we will use whatever tools and options we have at our disposal. So we want to observe traffic. We know that we can observe traffic through a proxy. But we also know that because that traffic is going over a network card, we can tap into those network cards and pull the packets out and observe it that way. Get in the habit philosophically of thinking there's something I want to do.

**[05:28:28](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=19708s)**

Observe traffic. I can't do it this one way. I'm going to find another way of doing it. You're not hunting out tools. You're hunting out approaches to let you achieve some outcome. And so long as you understand the technology, you understand a little bit more about networking. Remember what we're dealing with here are the OSI model. We're dealing with OSI layers. Normally what happens is we work at the application layer or the presentation layer because we're testing an actual application. What we want to start doing is moving down a layer.

**[05:29:11](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=19751s)**

So here in the transport layer, we're using TCP IP. We move up the layers to then start getting the HTTP traffic which is the application layer. Normally we're testing at the level that's using the HTTP traffic, but we can monitor at these different levels and let tools pull it back together for us. So if you want to do additional studying, this is something that we covered at university but didn't have a lot of use for in the real world. But this is the technology that underpins the networking that we use, the applications that we use.

**[05:29:50](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=19790s)**

If you're testing games, you might find that your developers are having to go right down and create their own TCP IP layers in order to make things faster. If you're working with performance test tools, you might find that they've written their own drivers that work at that level to make things faster. So we have to start understanding this in order to increase the technicalities that we have and the way of approaching the testing that we have. Don't need to understand it much but it's another area to research if you're interested in and this is where Wireshark starts coming into play.

<a id="chapter-04"></a>

## 05:30:13 — An Android Wireshark Testing Session

**[05:30:35](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=19835s)**

Okay, you can see I have moved on to the Mac for this. Wireshark works on both Mac and Windows. It's just at the moment my Windows configuration isn't working for Wireshark. And that's partly because Wireshark works at a lower level in the stack. So, it hooks into your network protocols in order to do all this work. On the Mac, Wireshark is working fine for me. Hopefully, you've got it installed at this point.

**[05:30:58](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=19858s)**

Now, Wireshark can seem intimidating when it starts. You can see all the different options and things here. We're going to make this simple. We're not going really going to explore the options in here. Now, you can see that I have my Android device running. I've connected over using VNC just so we can see what's going on. Let me just check that this still works. There we go. So, this is moving about on the VNC. I'm controlling my Android tablet. So for Wireshark, I'm going to do this.

**[05:31:30](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=19890s)**

This is the main wizard interface that you see at the front. We can do all our capture from here. I can click on the Wi-Fi network and I can click capture options here to start up this configuration or I could go up here to capture and do options. I'm going to do this because this is the way that I would normally do it when it's running.

**[05:31:49](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=19909s)**

Now, you can see we have a whole bunch of options in here. And this is the Wi-Fi card that I'm going to look at. This is running under X Windows. So the window movement is a little bit different. You can see there's my networks I have connected in this machine. Now what I want to do is make sure that promiscuous mode is enabled and that monitor mode is enabled. I need both of those if I'm going to capture traffic that is not on my machine and is going across the network.

**[05:32:19](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=19939s)**

So what I have to do is double click on this connection. Make sure promiscuous is captured and monitor mode is on. If I do okay now that's good. I can now start a capture. Then we'll just start seeing lots and lots of traffic coming through. Now most of this is shown as 802.11. So, I need to just double check something because when I'm working at home with my security on my network. I need to check the protocols and check the IEEE 802.11.

**[05:32:58](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=19978s)**

Now, I have enabled decryption on here and I've put my decryption key in here. So, I've hopefully edited the video so that you don't see that information. Now, if I can apply the preferences that I've just changed here. So, I don't have to come out of this dialogue. Let me minimize this. Now, in order for me to see the traffic that's coming through from the machine that I'm looking for, I probably need to Let's have a look.

**[05:33:32](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=20012s)**

So let me see if we've got any HTTP traffic coming through. So this is a display filter. What this is doing is filtering the information, all the capture packets that have been through. And you can see that I don't have any HTTP requests coming through in my current capture here. What I need to do is go back to my Android device and I need to reconnect it to the Wi-Fi. So, I'm going to disconnect it from the Wi-Fi for the moment.

**[05:34:06](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=20046s)**

Then reconnect it. And this is so that Wireshark can connect can start collecting the encryption requests. So, I'm not going to lie to you. At this point I started experiencing difficulties. It wasn't showing me the HTTP traffic. You can see that the protocol is still 802.11. So what I do is I start experimenting with the IEEE 802.11 preferences until I can actually start seeing some of the HTTP traffic. I've filtered it. I start moving back and forth between the ignore protection bits.

**[05:34:45](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=20085s)**

I keep applying it until at some point I actually see the traffic coming through. Okay. So, sometimes I have to fiddle about with the settings in order to get this working. But that's why you keep this window up in order to try the different options until we hit apply until it comes through. And you can see now that I have got the network traffic coming from my 143 device. You can see the in fact you can see all the traffic going across here.

**[05:35:15](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=20115s)**

So you can see my Sonos system in there. You can see it posting. You can see it doing a whole bunch of other things. So let's restrict the IP address to just my device and just have some HTTP traffic. So now it's filtering all the things that it has recorded. There we go.

**[05:35:37](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=20137s)**

Now you can see it's picking up the devices the names of the URLs because we told it to in the capture settings. What I might want to do is just do HTTP requests. So I could if I wanted just do the HTTP request dot method which equals let's just go for get So now we're seeing just the get. So we can double check that this is working. If I go back to the device, let me close this now that it's working.

**[05:36:20](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=20180s)**

Pick one of these and we should see the get request get made. There it is. The get request. All the traffic's going through. So why is this useful? This is useful if we're having to test something that we're not sure about. So in this instance, you can see the browser sending traffic through.

**[05:36:37](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=20197s)**

So let's assume for a second that we're not testing a browser app because we know that we can route browser traffic through a proxy. I'm just doing this to make sure that the VNC is working and that Wireshark is picking up traffic. Now that we know that, if I go on to an application on the Android, I'm just going to pick a Pac-Man game here. We're not doing this in order to hack the game or anything like that. We're just doing it because we're going to see what traffic this game sends out.

**[05:37:06](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=20226s)**

So, I'm going to move this over here. I'm going to change it. So, we're not just doing gets anymore. Although, you can see I think yes, we've just had some Pac-Man dash go through there. Go right down the bottom. This is all the HTTP. So, you can see some P- stuff. This is the pass the Pac-Man dash that we started. If I start this game, we can see it's posting some other things. So, I'm actually seeing the traffic from the game.

**[05:37:41](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=20261s)**

Now, I haven't set up a proxy. The Android tablet knows really nothing about my Mac. This is us pulling information off of the Wi-Fi network. Close down the ads. There you can see more Pac-Man traffic. If I start the game, let's see what happens. So you can see again the logging is going through. So I'm getting traffic from testing this Android application which is ignoring the proxy and we're seeing the traffic through and this is really how you use it.

**[05:38:20](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=20300s)**

Now you can see a whole bunch of other stuff happening as well. But the main thing here is we can use this to get traffic that we know nothing about. And you've seen the kind of filters that we'd use in here. So this is really useful for mobile application testing. It's also useful if you are in a hotel and want to see other people's traffic or an airport lounge and want to experiment with seeing what kind of traffic your device actually gives out.

**[05:38:49](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=20329s)**

It's quite a revealing and scary thing when you see the kind of information that your applications are doing.

<a id="chapter-05"></a>

## 05:38:50 — The philosophy of Wireshark

**[05:38:54](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=20334s)**

But it has practical uses and not just hacking. We can use this to observe the traffic for untestable applications because the point is we know that applications are sending out traffic. We want to be able to monitor that traffic and we will use whatever tools and options we have at our disposal. So we want to observe traffic. We know that we can observe traffic through a proxy, but we also know that because that traffic is going over a network card, we can tap into those network cards and pull the packets out and observe it that way.

**[05:39:38](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=20378s)**

Get in the habit philosophically of thinking there's something I want to do. Observe traffic. I can't do it this one way. I'm going to find another way of doing it. You're not hunting out tools, you're hunting out approaches to let you achieve some outcome. And as long as you understand the technology, you understand a little bit more about networking. The OSI model, we're dealing with OSI layers. Normally, we're testing at the level that's using the HTTP traffic, but we can monitor at these different levels and let tools pull it back together for us.

**[05:40:13](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=20413s)**

So if you want to do additional studying, this is something that we covered at university but didn't have a lot of use for in the real world. But this is the technology that underpins the networking that we use, the applications that we use. If you're testing games, you might find that your developers are having to go right down and create their own TCP IP layers in order to make things faster. If you're working with performance test tools, you might find that they've written their own drivers that work at that level to make things faster.

**[05:40:40](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=20440s)**

So we have to start understanding this in order to increase the technicalities that we have and the way of approaching the testing that we have. Don't need to understand it much but it's another area to research if you're interested in and this is where Wireshark starts coming into play.

---

[Previous: Mobile Web Testing](../11-mobile-web-testing/readme.md) · [Course overview](../../readme.md) · [Next: Virtual Machines](../13-virtual-machines/readme.md)
