# HTTP Proxies — Transcript

Technical Web Testing 101 · Alan Richardson

**Video range:** [02:09:35–02:40:18](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=7775s)

Edited from YouTube's automatic English captions to correct obvious recognition errors, spelling and sentence breaks. Chapter headings follow the published video timings; paragraph links locate the edited passages in the full recording.

[Section overview](readme.md) · [Summary slides](slides.md)

## Contents

- [02:09:35 — HTTP Proxies](#chapter-01)

- [02:10:36 — What is an HTTP Proxy?](#chapter-02)

- [02:15:33 — Configure Firefox to Use Burp Suite Proxy](#chapter-03)

- [02:17:30 — Basics of Burp Suite](#chapter-04)

- [02:20:53 — Repeating a Request in Burp Suite](#chapter-05)

- [02:22:16 — Intercepting and manipulating requests](#chapter-06)

- [02:25:27 — Generic Configure Browser to use a proxy](#chapter-07)

- [02:28:09 — Self Study Recommended Books](#chapter-08)

- [02:29:21 — Self Study Recommended Proxies to Try](#chapter-09)

- [02:31:43 — Next actions](#chapter-10)

- [02:32:59 — How To Chain HTTP Debug Proxies](#chapter-11)

<a id="chapter-01"></a>

## 02:09:35 — HTTP Proxies

**[02:09:49](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=7789s)**

Hi and welcome to an overview of technical web testing with HTTP proxies. My name is Alan Richardson. I blog at eviltester.com. That's my main technical software testing website. I blog at seleniumsimplified.com and I use that for my automation using WebDriver and Java. And compendiumdev.co.uk is my general website where I talk about testing, the books I've written and whatever else.

**[02:10:15](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=7815s)**

Now, in this particular tutorial, I'm going to give you an overview of using web proxies. I'm not going to go into a lot of detail, but I'm going to try and cover enough that for the self starters amongst you, you can go off, you can look at the links, you can download the tools, you can play with them.

**[02:10:30](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=7830s)**

What I want to do is give you some of the reasons why you should use this stuff and some of the capabilities of these tools so that when you're exploring them, you know what to map back to.

<a id="chapter-02"></a>

## 02:10:36 — What is an HTTP Proxy?

**[02:10:50](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=7850s)**

So, what is an HTTP proxy? Well, it's a piece of software that sits between your browser and the web server, and you route all your requests through the proxy. So when you make a request on the browser, it goes off through the proxy and hits the server, which means that the proxy is able to capture all the requests that are made, which means that you are able to view all the requests that go through the proxy. Same thing when the server sends a response back to the browser, it's captured in the proxy, so you're able to view it.

**[02:11:23](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=7883s)**

But more than that, you're able to manipulate it. You're able to change it in different ways before it either gets to the server or before it comes back to the browser. which lets you test in a really detailed way. You also get to view all the messages that are going back and forward. So, if you're not completely up to date with how HTTP requests work, what they look like, what's special about them, this is a great way of learning what's going on in the application.

**[02:11:49](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=7909s)**

HTTPS can be done through a man-in-the-middle approach where your proxy server sends the certificate back to your browser. Now, when the browser validates that, it says this is not the correct certificate. So, you have to add it as an exception in your browser, but it allows you to test HTTPS as well. So, even though you can't normally see it, because you're using a proxy with the man in the middle, you can see and amend your HTTPS requests.

**[02:12:16](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=7936s)**

Now, I think you do this because you need to learn as much as possible about the application and the technology that you're using. You need to learn about HTTP. All the headers, what they do. JSON, how it works, how it's formatted, how you can use it. The architecture of your application is a really important thing to learn. And most of the proxies will give you a site map. They'll show you the way that your application is built up. Being able to observe and manipulate web traffic, the HTTP traffic is absolutely essential for what you do when you're testing.

**[02:12:49](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=7969s)**

Some of the proxies will allow you to simulate network speeds. So if you want to check your application going through a lower bandwidth network, you can do that. You can simulate different browsers from a single browser by changing the HTTP headers that are sent through. I mean each browser identifies itself to the server through the header. This tells it which browser it is. Therefore, you can change essentially in quotes the browser you're using by sending through a different header. Uses for this are pretty much up to you and your imagination.

**[02:13:20](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=8000s)**

I've used it to test new CSS and JavaScript without releasing those to the server by allowing the proxy to pull them in from my local drive. And so I can use the application with the new CSS and JavaScript whilst running against the old application on the server. I can test the JavaScript on my client side and see how it handles 401, 404 and 500 error conditions by having the proxy send back those requests by amending the response in some way. So I don't have to fiddle with the server to see how the front-end JavaScript is going to handle extreme circumstances.

**[02:13:58](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=8038s)**

When you start to learn the functionality of the proxy, it's going to open up a new world of testing for you. And you're going to use that to guide what else you can do and how and change your test approach based on the functionality of the tools that you have available to you.

**[02:14:12](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=8052s)**

Now, now I use this pretty much all the time when I'm not using a proxy. I sometimes don't feel like I'm testing. I feel like I'm testing blind or I'm testing naked because I don't have the right functionality that I need to get access to that application. I mean sometimes you have to be careful that the proxy itself doesn't add additional noise into your testing. So if you do find a defect and you're going through a proxy, make sure you confirm it without the proxy being on if you can.

**[02:14:44](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=8084s)**

You may find issues with streaming depending on which version of the proxies you're using, depending on what technology you're using. You may have issues with long polling with the websockets, but some proxies handle this, some don't. Older versions of proxies don't handle it. Newer versions do. There are a lot of proxies out there. So, you just have to learn what the capabilities of each one is, how it impacts your testing, and whether it imposes any risk on the testing that you're doing because a proxy is invasive.

**[02:15:11](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=8111s)**

So, just double check your results. But for me, the value that I get out of using a proxy is massive and it completely trumps the risk that's introduced into my testing by doing it. So I pretty much always as much as humanly possible use a proxy. When I don't, I rely on the features in modern browsers because they're coming closer to proxies, but they don't go far enough. They don't cover the same ground as what a proxy can do.

<a id="chapter-03"></a>

## 02:15:33 — Configure Firefox to Use Burp Suite Proxy

**[02:15:47](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=8147s)**

So you have to be able to configure your browser to use the proxy. So I'm just going to drop down into demo mode so we can have a look. So I've gone off and I've downloaded Burp Suite from the Burp Suite site. I'm going to use Burp Suite in all these demos. There's a whole bunch of proxies you can use, but I'm just going to use Burp Suite to make this fast.

**[02:16:05](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=8165s)**

Burp Suite runs under Java, so as long as you got Java installed, you can do it. I've downloaded the JAR file. I'm just going to do java -jar burpsuite_free_v1.5.jar because Burp Suite comes in two formats the free version and the paid for version. I'm using the free version because that's usually good enough for testing.

**[02:16:25](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=8185s)**

Now I'm going to go through this quickly. I'm not going to do this in depth. I expect you to explore and follow this up. If I look on the proxy tab you can see intercept is on which means that any request going through this will be intercepted. So I'm going to turn that off to start with. In options, you can see I have two listeners set up because I've been experimenting with this. So, I'm going to remove this one. And now I've basically got a listener on port 8080 on my host machine 127.0.0.1.

**[02:16:59](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=8219s)**

So, I'm just going to set Firefox up to point to that proxy. If I go into options, options, advanced, network, configure how Firefox connects to the internet, manual proxy configuration, and you can see it's the same as mentioned here. 127.0.0.1, port 8080. Now, this is pretty much the same scenario you're going to use for any of the proxies. You're going to look to see what port the proxy has bound to. Then, you're going to go in your browser and you're going to change the configuration to point to the proxy.

**[02:17:29](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=8249s)**

I'm saying to use it for all protocols and then when I do let's let's just do a quick search.

<a id="chapter-04"></a>

## 02:17:30 — Basics of Burp Suite

**[02:17:48](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=8268s)**

So I'm going to show you here in proxy history nothing has been captured. I'll go into Google and I will search for Burp Suite. Let's do that. Connection is untrusted. Why is that? Because it's going through an HTTPS request. So the proxy is sending back a certificate to the browser that the browser knows is not coming from Google. So I'm going to say that's fine. Add that as an exception.

**[02:18:11](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=8291s)**

Now when you do this, you have to learn how to delete the exceptions later on if you really want to. But because we're putting the request through, we know that it's coming through from our proxy. And you can see here in the proxy history that these are the requests that were made when I did a search for Burp Suite. And I can go in here and I can see the request that was made and I can see the response that came back.

**[02:18:35](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=8315s)**

Now if when you're reading this you don't know what it means then it's a great way to learn because if you go I have no idea what this host in the request is just go off Google it do a search. If you have no idea what the accept language is for or what this accept header is for, this is the time to go away and learn. If you don't know what this cookie thing is doing, go away and learn. Look these things up and you will learn more about technically how the HTTP traffic is working because then when you start to test, you can change this.

**[02:19:07](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=8347s)**

You can change the user agent and pretend to be a different browser if you know that that's what this is doing. You can amend the cookies before they send back. Now in the response you can see we've got a handy set of features here. I can view it in different ways. I tend to view things in raw. But if I really want to just explore the headers, I can view that in a nicely formatted part. Renders quite usefully because it tries to render the page for me.

**[02:19:29](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=8369s)**

It doesn't always have access to the CSS, but it shows me this as much as it can. I can see a nicely formatted view of the HTML. I can search for things. If I really have to, I can use hex. Never done that, but that's interesting. Request is good because I can see the parameters that were put through. I can see that some were put through in the form. I can see that some were put through in the URL. It's a way of splitting down this request into a more visible way of reading it.

**[02:19:53](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=8393s)**

So, this history shows me all the requests. I can see a whole bunch of information about them in a nice format. What status came back, what status code. Of course, all of that is here in the response when I know how to read it. So this is a fantastic way of viewing what is going on as we test the application.

**[02:20:14](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=8414s)**

Now what else is really useful is that in the target you can see a whole bunch of sites mentioned here because what happens is with Burp is it's doing passive scanning of the requests that are coming through and it's basically said all these ones in bold are things that you've been at. Now I also found all this other stuff listed in passing.

**[02:20:34](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=8434s)**

Now, you haven't visited this, but you might want to. So, if I'm doing functional testing, this is a really good way for me to see what kind of coverage I've done in this particular session because any requests that I've made is here in black and white. Anything in gray is something that I could have covered but haven't covered yet. So, I get a really good feel for what I've done and what I haven't done.

<a id="chapter-05"></a>

## 02:20:53 — Repeating a Request in Burp Suite

**[02:21:08](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=8468s)**

So if I go off to the Burp site, you can see here down at PortSwigger, it's got Burp. It's got the response. Now I can do a repeater on that. I can send it to repeater. And you can see here repeater has been highlighted in orange. This request is in there. I can say go do that again.

**[02:21:30](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=8490s)**

Now, if I want to, I can say, let's do a search for Burp index.html. I have no idea if it's there or not. So, I'm going to hit go, see what happens. And we get back a index page. And you can see that the CSS hasn't been pulled in properly, but I've got the basic content of that page. And I did that not by issuing a request through the browser, but by changing the raw headers in here in the request by changing the raw request that was put through.

**[02:22:03](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=8523s)**

That's what the repeater allows you to do. It allows you to amend the request and put it through and see. Now, obviously that response didn't come back to my browser. And obviously that has not been shown in my history, but that's because repeater is a self-contained piece of functionality over here.

<a id="chapter-06"></a>

## 02:22:16 — Intercepting and manipulating requests

**[02:22:46](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=8566s)**

So I've just reinstated the defaults here. So if in so I have intercept on. So I've gone off to success stories and you can see now that the proxy and intercept has been highlighted. That's because in the options I'm saying I want you to intercept whenever I receive any extension that isn't an image or a CSS or a JavaScript or whatever is in here. And that's what this is. This is a request. So in intercept now you can see that I've done a request for or I'm about to do a request for get Burp Suite success-stories.html.

**[02:23:28](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=8608s)**

Now I can amend this as much as I want. Then click forward where I can say do not send this request. So I'm going to forward this through. And you see that the response came back into my browser because this is the main request going through and it's shown in the history. So if I look in the history here, you can see that the request has been modified. Here's the original request that was going to get sent through. Here's what I edited to be.

**[02:23:58](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=8638s)**

And here's the response. And I can actually see the proper response because it came through into my browser. Or I can render it here. Now, there's a whole bunch of functionality that you can do with Burp. But the basic functionality I want you to be aware of here is that these proxies allow us to observe the traffic that is being sent through, observe the requests, we can see the headers, we can see everything that's going on. We can see everywhere that the system has been and we can manipulate it.

**[02:24:25](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=8665s)**

We can change the request before it goes to the server. We can change the request from the server before it actually hits the browser if I want to. Over here in options, I can intercept server responses. So I can do the same thing here for responses. If I want to simulate different conditions, if I want to change the JSON that's coming back, I can do intercept a request which is going to the server or response which is coming back. I have all these different options because I want to be able to manipulate the traffic in either direction.

**[02:24:56](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=8696s)**

There's a whole bunch of options around here that depending on your proxy, you'll be able to do different things. You can automatically change things in the responses when they come through. So, you can always pretend to be a particular browser or not. You can enable hidden and disabled fields so that they're sitting there in the browser so you can amend them.

**[02:25:15](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=8715s)**

Now most modern browsers allowed you to do that anyway by updating the DOM, but in the past that was really hard to do. So explore the proxy when you download the proxy. Explore it and see what functionality is available to you so that you can then start doing more and better testing.

<a id="chapter-07"></a>

## 02:25:27 — Generic Configure Browser to use a proxy

**[02:25:42](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=8742s)**

So you do have to configure the browser to point to the proxy. Now the good thing is that with Firefox and Opera, your proxy settings are completely independent of the system settings. You saw there in the demo that I used Firefox. That didn't impact my IE settings or my Chrome settings because those were the Firefox settings. Opera is the same. If I use Chrome and change the browser to use the proxy then it will impact IE and all the applications on my system.

**[02:26:10](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=8770s)**

Now that might be what you want. So you just have to be aware what the prox what the browser itself is doing. Chrome and IE uses system settings. Firefox and Opera can maintain settings independent of the system settings. Now each of the different browsers has a different way of doing it. You saw how I did Firefox. In Chrome you go into settings, search for proxy then just change it. thing to be aware of is that the incognito mode and the normal mode share the same proxy settings because they're both going through the system settings.

**[02:26:39](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=8799s)**

Firefox, you saw how to do it. If you had already configured IE or Chrome before you did Firefox use the proxy, then in Firefox just set it to use the system proxy instead of no proxy and you'll pick up the configuration that Chrome and I are using. Opera is much the same. Go into settings, preferences in advanced network, then change the proxy servers. Good thing about Opera is that using F2, you can toggle the proxy on or off once you've set it up.

**[02:27:08](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=8828s)**

IE again you use the tool bar, you pick config options, then connections, then LAN settings, then use the proxy server. All these things are different depending on different browsers, but they all have the same effect of routing traffic through your proxy. Now, you saw there that I was asked to add an exception into the browser because the proxy was sending back a man-in-the-middle certificate. So, you just have to add add that into your browser as an exception.

**[02:27:38](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=8858s)**

Now, the important thing to do is to learn how to remove them afterwards because you're adding this in for testing and you may not want that there all the time. So, I put the options up here as to how you go through to remove them, but it's basically going through the encryption or the manage certification. functionality within the browser. It's browser specific. You learn how to do it for each browser. It may well change across the different versions of the browsers.

**[02:28:03](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=8883s)**

So, I've put the details on this slide here on the screen to show you the basics of what to do because remember I'm trying to go through in this particular course is an overview fairly quickly for what you what functionality you can do.

<a id="chapter-08"></a>

## 02:28:09 — Self Study Recommended Books

**[02:28:25](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=8905s)**

There are books that are available. I thoroughly recommend The Web Application Hacker's Handbook. Let me show you this. This is the same guys that wrote the Burp Suite tool. And this is a massive book and it covers the HTTP traffic, the requests, what the different messages mean, how to use it. This is a really really good book for helping you understand what you can do.

**[02:28:49](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=8929s)**

Now, security testing is different from application testing, but we're using the same tools. We need to learn how to do them. The technical details are all contained in that book. It's an incredibly useful book to have a look at. Now, Eric Lawrence, who wrote the Fiddler Proxy, has written a book on how to use Fiddler. It's also is a very, very good book. Covers Fiddler in detail. How to script, how to set break points. Fiddler has a slightly different approach than Burp Suite is sometimes it's a lot easier to use than Burp Suite for beginners. So, if you're interested in these tools, follow these links, buy one of these books, have a look.

<a id="chapter-09"></a>

## 02:29:21 — Self Study Recommended Proxies to Try

**[02:29:37](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=8977s)**

Now, the proxies that I use: I use Burp Suite which is over there on portswigger.net I use fiddler which you can get from fiddler2.com and I use Zed Attack Proxy which is available on Google code and this is an OWASP ZAP proxy.

**[02:29:54](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=8994s)**

Now they all have slightly different pros and cons, slightly different functionality. So most of the stuff that we do as testers, we don't need much more than the bare minimum to manipulate and observe traffic and all these tools do that in one way or another. Burp Suite has the ability to sequence attacks through and the Zed Attack Proxy goes much much further in terms of the functionality that's available for free. But explore all these tools and just see how you get on and learn as much as possible about all the different ways of exploring the web application and changing the traffic on it to make your functional testing more effective and to go in more detail into the application.

**[02:30:38](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=9038s)**

So the Zed Attack Proxy has a Twitter account which is worth monitoring. And that's pretty much it. I want you to go away, follow the links, download the tools, feed them through your applications, configure your browser, explore this and experiment with it. Remember, you can come back. I've gone through this very quickly, but you can look at the instructions at your leisure. You can download the slides and have a look through this. Follow the links, have a look through, but start using it.

**[02:31:05](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=9065s)**

Honestly, when you start doing this, if you're not doing it already, when you get used to it, you will feel out of control when you don't have the degree of information that these proxy servers can provide you in your testing. And if you don't get to that point, then you're not reading the request. You haven't understood the HTTP. You haven't changed the request before it went through to the server and seen the value that that can add in terms of bypassing the front-end JavaScript in terms of testing the validation that the server side and the front end side in terms of testing your JavaScript in isolation of the server.

**[02:31:40](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=9100s)**

All these things are possible when we start using proxies and I think they're an absolutely essential tool for introducing into our functional testing.

<a id="chapter-10"></a>

## 02:31:43 — Next actions

**[02:31:59](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=9119s)**

And that's pretty much it. I want you to go away, follow the links, download the tools, feed them through your applications, configure your browser, explore this, and experiment with it. Remember, you can come back. I've gone through this very quickly, but you can look at the instructions at your leisure. You can download the slides and have a look through this. follow the links, have a look through, but start using it. honestly, when you start doing this, if you're not doing it already, when you get used to it, you will feel out of control when you don't have the degree of information that these proxy servers can provide you in your testing.

**[02:32:34](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=9154s)**

And if you don't get to that point, then you're not reading the request. You haven't understood the HTTP. You haven't changed the request before it went through to the server and seen the value that that can add in terms of bypassing the front-end JavaScript in terms of testing the validation that the server side and the front end side in terms of testing your JavaScript in isolation of the server. All these things are possible when we start using proxies and I think they're an absolutely essential tool for introducing into our functional testing.

<a id="chapter-11"></a>

## 02:32:59 — How To Chain HTTP Debug Proxies

**[02:33:16](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=9196s)**

Okay, I'm going to give you a quick example of how to chain proxies. And the reason I do this is there is no single tool that will rule them all. There is no single tool that I rely on more than any other. I like to use tools in combination because then I can use whatever is most unique about that tool and harness the benefits of using it with the other functionality for the other tools. So I like to have screen capture tools, lots of different text editors, different diff tools because they'll all have pros and cons for each other.

**[02:33:47](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=9227s)**

Some of them have features that I use at different times. It's the same with proxy servers. So I use Fiddler, I use Burp, I use OWASP ZAP, and they each have features that I really like. So, Fiddler has autoresponders. Burp has a really good site map on the side. The Zap has really good way of creating multiple break points. So, I like to use them in combination. So, I'm going to show you how to set this up. So, the first thing I start with is a browser.

**[02:34:12](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=9252s)**

All right, just a browser. I'm happily browsing around with nothing going through the proxy. And I'm using Firefox because remember Firefox maintains its proxy settings independent of the operating system. So if I start up Fiddler now, Fiddler is hooked into the normal Windows system. And if I just do a quick refresh here, Ctrl+F5, that refreshed. Nothing went through Fiddler. So my browser is not hooked into Fiddler. So, if I go into the options in here, network settings, configure it to point at Fiddler.

**[02:34:56](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=9296s)**

And there we go. We've got traffic coming through Fiddler now. Now, when I'm chaining proxies, I do this step by step. I get each thing working before I move on to the next step. Because I see too many people just trying to set up all their proxies at exactly the same time. They're not sure which proxy has overridden which port. They're no idea why things are not working. We do it step by step and we check each step of the way that things are working.

**[02:35:20](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=9320s)**

So, let me bring Firefox down a little bit here. So, we got Fiddler with going through now. So, next thing I'm going to do is bring Burp Suite into the mix. So if I get a command line up, we go java -jar Burp Suite. And there's burp. So burp has settings from my previous run.

**[02:35:52](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=9352s)**

So let me just refresh the settings here. I'm going to restore them to default. So burp is now on. Yeah. So, it's now saying so check the alerts in Burp. The alerts tab is really, really useful. Use the alerts tab because it will tell you whether it can't start up the port or the proxy you're in like that. So, my proxy main proxy is sitting here on 8080 on the local host.

**[02:36:17](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=9377s)**

Now, what I want to do in Burp is over here in options in the connections. I want to set the upstream proxy server. And you can see that it's left over from the previous one. localhost:8888. So, let me just edit this. This is the setting that I want because Fiddler is running on local host. It's bound to port 8888. And I want to for any destination host that I'm going to, I want to feed them through in proxies. So, I can set up different upstream proxies for different servers for different applications, different things I'm testing here.

**[02:36:51](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=9411s)**

I'm basically just saying any request I make, feed it through into Fiddler. So, there's no alert saying anything's wrong. So, what I'll do is I will go into Firefox. Let me clear the Fiddler traffic just in case. In Burp, I'll make sure the intercept is off so that nothing bad is happening. Then I'll go into Firefox options, change the settings for how it connects, and I'm just changing the port to what we had for Burp, which was 8080. And hopefully if we've done it right.

**[02:37:26](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=9446s)**

So traffic went through. Traffic is appearing in Burp and it should be appearing in Fiddler at the same time. Great. So I've now chained my browser through Burp through into Fiddler which means I now get the benefit of the site map for Burp and I can set up any autoresponders in Fiddler. So the next thing we're going to do is set up Zap. So I've downloaded Zap. Just going to start it from the explorer like that. Can listen for 880. That's fine.

**[02:38:04](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=9484s)**

That's because Burp is bound to that. So what we'll do is we go to tools options local proxy for Zap and tell it to bind to a different port. So, let's have it bind to port 8082. Hasn't complained, so we'll assume it's doing that. Then we'll go into tools, options, and in the connection option, we're going to set it up to point through into port 8080, which is Burp. We're going use an outgoing proxy server on the local host on port 8080.

**[02:38:39](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=9519s)**

So now in theory if I point Firefox at port 8082. Remember the port is what that application is listening on and we're telling it to send requests in. So I'm saying zap is listening port 8082. So I want you to send all your requests through into 882. Let's see if this works. Oops. I need one that goes to a different page. There we go. And Zap is now starting to have traffic going through. There should still be traffic coming through in Burp.

**[02:39:24](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=9564s)**

Let's just double check that. Yep, there is all the there's all the traffic coming through from that request into Burp. And it should be coming through Fiddler as well. Let me just do a another refresh just to double check that. There we go. Now I have my browser going through Zap, which is going through Burp, which is reading through Fiddler, which is going to the outside world. So I've got all these tools working in combination so I can harness the benefits of each and every single one of them.

**[02:40:02](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=9602s)**

I encourage you to do this to experiment with different tools to see what pros and cons you have. You can see the difference in the tool and what they're good for at different times. That will help you get used to them. But the basic principle here is we want to use multiple tools. We want to use multiple tools in combination. And the tools themselves if they're good enough will support us in that respect.

---

[Previous: RestMud Text Adventure Game](../07-restmud-text-adventure-game/readme.md) · [Course overview](../../readme.md) · [Next: Interactive REST API Testing](../09-interactive-rest-api-testing/readme.md)
