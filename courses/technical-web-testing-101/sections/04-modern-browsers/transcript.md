# Modern Browsers — Transcript

Technical Web Testing 101 · Alan Richardson

**Video range:** [00:18:58–00:55:58](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=1138s)

Edited from YouTube's automatic English captions to correct obvious recognition errors, spelling and sentence breaks. Chapter headings follow the published video timings; paragraph links locate the edited passages in the full recording.

[Section overview](readme.md) · [Summary slides](slides.md)

## Contents

- [00:18:58 — Intro to modern browsers](#chapter-01)

- [00:19:51 — Overview of Firebug in Firefox](#chapter-02)

- [00:22:07 — Firefox WebConsole](#chapter-03)

- [00:24:54 — Google Chrome Incognito Mode](#chapter-04)

- [00:28:20 — Chrome Editing Cookies](#chapter-05)

- [00:35:06 — An exploratory technical web testing session using Chrome](#chapter-06)

<a id="chapter-01"></a>

## 00:18:58 — Intro to modern browsers

**[00:19:09](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=1149s)**

The modern browsers have some of this functionality built in. Because we can observe the traffic using the developer tools or with Firefox we can use Firebug. We can fiddle, tamper or change the page using the DOM. Most of the browsers allow us to manipulate the DOM now which they didn't do before. So we can get around some of the observe and manipulate functionality without ever using a proxy anymore. A proxy allows us to go further and much more regularly do this type of work.

**[00:19:42](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=1182s)**

But if you can't install a proxy for whatever reason, you can do some of this using a modern browser. And it's up to you to learn this in much detail and explore it. So let's just have a quick look.

<a id="chapter-02"></a>

## 00:19:51 — Overview of Firebug in Firefox

**[00:20:03](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=1203s)**

So we have Firefox here. If I inspect the element, this is the built-in browser tools in Firefox. I don't think they're as good as other browsers, but that's the way that this works. However, if I use if I use Firebug, then in the network tab, if I enable this, I do a refresh. Of course, tamper is on here. So, intercept off. You can see that for the making that request to that page the different requests that were made. You can see the timeline that they were made in.

**[00:20:49](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=1249s)**

You can see the headers that were sent. You can see the request that I sent through and you can see the response that came back. I don't have the ability to change it but I have the ability to observe it. So if I want to change this before I go, then I use the inbuilt functionality in here so that I can inspect the elements and then just change them. So that link will go off to dot slash which is the main one.

**[00:21:16](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=1276s)**

I could change that if I wanted to. I could change that to in index. That's done. So now when I click on about it will go off to index.php. I've changed the DOM which is changing what's going on. So instead of changing the request I've changed it on the page then it's initiated a request to index.php not found. So I can simulate a lot of the functionality that we get from a proxy in the browser.

**[00:21:47](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=1307s)**

Now it's not the same but it allows me to observe and manipulate some of the features for modern web testing. So get used to the features that are in a modern browser as well because they can help you simulate or help you come close to the same degree of observation ability that you get without having to use a proxy server.

<a id="chapter-03"></a>

## 00:22:07 — Firefox WebConsole

**[00:22:18](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=1338s)**

Now I'm conscious that I'm sometimes a little bit harsh on the in-built Firefox tools. I'm so used to just using Firebug, using the network tab in there, sticking persist on, seeing all the traffic that goes across the actual network, getting nice views, colour-coded, all that stuff. So seeing the headers, the response, all all pretty much nice and easy, nice and simple. But I shouldn't rule out the inbuilt tools completely. If I have a look here and do the developer toolbar, the web console is very important.

**[00:22:59](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=1379s)**

Normally I just use the inspect part. That's what I showed you before. The web console is very important because we've got the net tab. Now I can tell it to log. I can tell it to log the request and response bodies. So if I do a refresh up here now, we'll see the messages coming through.

**[00:23:18](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=1398s)**

Now I can click on those see the actual request header. The response header and the response body. If I hadn't put the log request and response bodies in here, I just have the headers. But that might be what you want. That might be all you need. And this persists across the different sessions because we're dealing with a log and this might be the level that you need it at. And you can see the CSS messages, the error messages coming through.

**[00:23:48](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=1428s)**

Let's see if we get any here. If not, I'm pretty much guarantee that if I go to the main site, I'll get some. There we go. So, there's some error messages because everything is very select. I can look at JavaScript. I can see the JavaScript errors and warnings. This is out the box with Firefox. We can see the traffic coming through. So, if you get to the point where you got Firefox, you can't install Firebug. Start with the inbuilt tools. It's really important to learn these inbuilt tools.

**[00:24:15](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=1455s)**

I am still learning these tools. I am still investigating these. I know that there's a lot of power in here that I haven't fully tapped yet. It's part of the reason why I'm building this course up to help me explore these things in more detail. That's why I encourage you to do. All the modern browsers now have developer tools. Investigate them. Learn them. Look on the Firefox site. Learn how their developers tools work. Look on YouTube. Watch the videos for these things.

**[00:24:40](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=1480s)**

Pull all that information together and see how to apply that functionality and you're testing because you get it for free. You're going to be told to test on certain browsers. You're going to be installing these browsers in your machine that is there for free on your machine and you should learn how to use it.

<a id="chapter-04"></a>

## 00:24:54 — Google Chrome Incognito Mode

**[00:25:07](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=1507s)**

So let's have a look at incognito mode. So incognito mode is over here. We can find it. New incognito window or Ctrl+Shift+N. Let me do a Ctrl+Shift+N here. Now it's saying you've gone incognito. We won't track any histories blah blah blah blah. Now what's interesting or what's useful about incognito mode for testers is that it doesn't know what we've been doing. So if I am same over here on my selenium.com blog, you can see that in Chrome I'm actually logged in.

**[00:25:44](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=1544s)**

Over here in my incognito window, I'm not. So I can see what things are like when I'm not logged in compared to when I am. That's typically how I use it. If I'll be testing something over here, I'll be logged in. I'll open up an incognito window and then I'm suddenly a new user browsing the website. I could do this in different browsers, but sometimes it's handy to stay with the same browser. Other things that we can do with incognito, we have access to our history.

**[00:26:15](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=1575s)**

What we can't do in incognito mode is add to it. So, nothing that I do in an incognito window will add to the history, but I have access to the history that's already there. extensions. You can use extensions in incognito mode, but what you have to do is deliberately allow it in incognito mode. So, you can see here I haven't enabled these particular extensions in incognito, but I have enabled the user agent switcher. When I set that up, there it is in incognito mode, but you can see I have other extensions over here in the non-incognito mode browser.

**[00:26:51](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=1611s)**

Things that it's useful for in terms of if I look at the developer tools in resources cookies, I've only got the cookies for the sites that I visited in here. I don't have them for anything else. If I start a completely new incognito window, get developer tools up, Ctrl+Shift+I, resources, cookies, there's no cookies.

**[00:27:19](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=1639s)**

Now I can have multiple tabs up here and they won't share the cookies. So if I go off to let's pick wire.com you can see now we have some cookies in there. Let me get another Ctrl+Shift+N another incognito window up and no cookies for the wired because that's over in one incognito window but not in the other. So, it's very useful in the sense that we've got multiple windows that don't really relate to each other. They can share a previous history, which is handy if you're testing a particular site and want to navigate back to where you've been, but nothing is shared within these itself.

**[00:28:02](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=1682s)**

So it can be a handy tool in testing for setting up a completely new session or multiple users or logging in even with the same user using the same browser at the same time because the cookies in the sessions are not shared between those particular browsers.

<a id="chapter-05"></a>

## 00:28:20 — Chrome Editing Cookies

**[00:28:34](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=1714s)**

The use of cookies for technical testing is absolutely important on the web. I mean websites do so much functionality through cookies. We need the ability to manipulate them. Now you can see here I've got a page compendiumdev.co.uk/selenium/search.php. And this creates two very simple cookies on this page in Chrome out the box. If I want to test this page and I want to manually mess about with the cookies because that's what testers do. We change the cookies. They get fed back into the application when we post requests or the JavaScript accesses them and does stuff.

**[00:29:09](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=1749s)**

All I can do in Chrome up here in the developer tools, remember Ctrl+Shift+I brings up developer tools. In resources, we access the cookies. We've got elements here, resources. We can see the cookies that are down here. They're for each domain that we've been to in this session or what we're working with here. And what I can do in Chrome out the box is I can refresh that cookie, see if it's changed or delete it. That's it. That's my that's my scope.

**[00:29:44](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=1784s)**

I can't edit this cookie. You can see here I've got a cookie cookie called Selenium simplified search number of visits. It's saying my first search. I think if I do another search do search here cookies goes up to two. We now have a new cookie. Can see the last search. But I can't manually do anything with that cookie out the box with Chrome. So what we have to do is head over to the Chrome web store. You can see here I've done a search for cookies and in apps I use this cookies application and in extensions I use this edit this cookie.

**[00:30:26](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=1826s)**

Now both of these have slightly different functionality. They overlap but I you I have to use both of these cookies to get the kind of functionality that you get from Firefox when you install Firebug. So, for the cookies app, because it's an app, I have to right-click and it's this edit cookies. The cookies app only appears in the right-click menu with edit cookies. The edit this cookies, which is an extension, appears in the right-click menu and up here on the extensions toolbar.

**[00:31:04](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=1864s)**

So, let's have a look at both these tools. So, the edit cookies because it's an app gives me a new tab here. And you can see that I've got all of the sites and the cookies that I've been working with. And then I have to filter them to get to the right one. CompendiumDev. Great. So, there's my Selenium cookies. And you can see here the value. So, now I can edit this stuff. I can edit the domain. The cookie then would not be relevant on that particular domain.

**[00:31:34](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=1894s)**

If I want to test it, I can change the name. I can change the value, the path for it when it expires. I can change most of the values in here. So, that's really good. What's hard about this particular one is how do I add a new cookie? Sometimes I want to add a new cookie in. So, here I've got the add cookie button, but I have to change the name in order to do that. So in order to create a cookie for a domain, I have to have a cookie there already or pick a cookie somewhere else and then amend the domain to match this one.

**[00:32:12](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=1932s)**

So what this extension is a bit of a pain for is adding new cookies and we have to filter the domain to find the cookie we want. What's great is we have access to all the cookies in here and we can change it. So this is a really useful thing as part of my tool set. But sometimes if I'm testing a particular application, I want to go straight to the cookies for that particular site and you can see them here. So I've done the edit cookies from the toolbar or I could do edit cookies here and then it's showing me the cookies for this site.

**[00:32:47](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=1967s)**

I've got two number of visits. So one of those the domain is slightly different. I wonder if that was when I hit add cookies in cookies over here that that thing was created. Okay, not going to worry about that. In fact, all of these have the same domain. So, I'm going to assume that was a problem with me creating it. So, I'm just going to delete this cookie. I don't think it's relevant.

**[00:33:09](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=1989s)**

Let's check that the application still functions. Does everything's working. There's the domains. So, I can now see the cookies for that domain. What this one is good at is adding a new cookie. If I add a new cookie here, it comes in for the domain for the expiration date that we're working with. What this add-on is a real pain for, if I go back to the list of cookies, is editing it because I can't edit the name of the cookie. Here's the name up here.

**[00:33:42](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=2022s)**

I can't edit the name. I can't edit the domain that the cookies on. So, this is really good for working with the cookies on the actual site and the domain. Creating new cookies is really easy here because it's predefined for the particular domain that you're working with. But amending the name is a pain. Changing the value, the path, all the other attributes is okay. So I have to use both of these plugins. The cookies plugin from apps, the hot cleaner.com cookies plugin and an extension is the edit this cookie in order to get kind of out of the box functionality that we would get from Firebug.

**[00:34:23](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=2063s)**

But I need as a manual tester the ability to change and delete and add new cookies to see how they impact on this site. Because here we've got cookies number of visits. Change that. Make it 100. Submit cookie changes in here. If I do refresh contain that's okay. You can see 101 cookies reported down the bottom. You've been here 100 times before. So I can test that functionality now by amending the cookie in here. The same with I can change the last search for.

**[00:34:57](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=2097s)**

So as just quick overview, out of the box, Chrome's pretty limited. I need to use two extensions cookies and edit this cookie.

<a id="chapter-06"></a>

## 00:35:06 — An exploratory technical web testing session using Chrome

**[00:35:20](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=2120s)**

So, I just want to give you a quick demo of the power of the built-in tools for modern browsers. Now, I'm going to use Chrome to do this because I like the built-in Chrome tools, and I'm going to use the Gruyere application to demonstrate this. The Gruyere application is one of the applications that is set up live. It's online and it's there for you to experiment and hack with essentially.

**[00:35:46](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=2146s)**

Now, we're not really going to hack it. We're just going to use that as a basis for functional testing. And as we do that, we're going to see vulnerabilities and the kind of things that testers would do. So this is really an exploratory test session where I'm going to use the tools to augment my testing. So that you've got all the instructions for Gruyere on here if you want at the google-gruyere.appspot.com. So you basically create your own instance of Gruyere or start your own instance of Gruyere.

**[00:36:13](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=2173s)**

It creates one for you. So I'm going to use my session. Now I'm not even going to get into what the functionality of this app is. I'm just going to focus on the most basic stuff. So I can see that there are some user accounts in here. And by the way, because this is exploratory testing, normally I'd make a lot of notes. Instead, I'm just going to talk about what I can see and we'll try and remember it. This is the kind of thing I'll do if I'm mentoring testers or teaching them.

**[00:36:38](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=2198s)**

I'll pair with them and we'll go through things in this kind of fashion. So this is essentially a pairing session with just you and me. So we've got a couple of users here. I can see there's a Cheddar Mac user. they have a user ID down here. You can see I assume that's the user ID. I can't move the mouse down to show you, but that's the cheddar cheese one. And homepage for Brie is Brie. So I'm assuming that's the user ID.

**[00:37:05](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=2225s)**

So the first thing we're going to do, I can't really I can go home. I can't really do anything. This is my home. So I'm going to sign up as a new user. So let's before I do anything here, let's investigate what this form is. So the inbuilt functionality lets me inspect elements. So now I can see the stuff on the page. So I've got a DOM browser in here and I can see a form.

**[00:37:32](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=2252s)**

Now this is interesting because the form is a get and normally you'd expect a form particular signup form to be a post. So that's pretty much a bug. That's going to work in our favor in terms of doing security testing. So that's a vulnerability but it's also a bug. You'd flag that as a functional bug because you're expecting a post to be the thing that's going to change the values in there. So I can inspect the DOM, I can see the various values that are going to be sent through in terms of a UI and a is author.

**[00:38:07](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=2287s)**

Now what I'm interested in because this is a hidden field. If I change that and I could I could change that in here. Now, presumably there's an admin functionality. I could change this in the DOM. Do is admin and it might set me up as admin. Let's just start with the normal functionality now though and say is author true. I don't know what this LP checked is, but presume I could change this. The good thing about the inbuilt tools is I can change anything in the DOM.

**[00:38:38](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=2318s)**

I could even go in here and use someone else's Gruyere instance, Gruyere instance, but I'm not going to do that. So, the inspect functionality is very useful. I can change things in the DOM. So, without even submitting requests, I don't have to breakpoint requests in order to change them. I can submit them in change them in the actual DOM itself and then submit them normally through the browser. Because remember this is the kind of stuff that we would previously have had to use a proxy to do.

**[00:39:09](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=2349s)**

We'd have to breakpoint it, then change the message, then send it through. But because the modern browsers now allow us to inspect the DOM and amend it, it's a lot easier to do certain types of functionality. So let's just create a user by start. Let's make sure the network stuff is on though because I haven't got that switched on. So what I need to do is set this up to capture. So I'm going to preserve the log upon navigation. I think that's an important thing to do.

**[00:39:32](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=2372s)**

Let's refresh this page. So now you can see network traffic is being captured. So I'm going to sign up as Bob with the password Bob because that's how secure we are and create this account. Now if I hadn't noticed if I hadn't inspected the form, then I would see in here the request being made. Again, this is the kind of thing that you'd have to use a proxy to do in the past. But now we've got the network tab built in.

**[00:40:00](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=2400s)**

All the browsers have this kind of functionality. You've already seen it there for Firefox. Opera does a very similar thing. And I can see that this is a get method. If I hadn't inspected the form here, I can see from the network traffic that it's a get. Even if I wasn't using network traffic, I can see up here in the URL that it's a get because this is clearly the kind of URL that you build for a get rather than a post because the all the parameters are in here in the URL.

**[00:40:29](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=2429s)**

So I can see the actual parameters in here with the action new the user ID and the password and just seeing this stuff. I've seen it in the form when I inspected it. I can see it here in the request. I can see it up here. I'm starting to think about the risks because remember technical testing isn't just the tools. It's our understanding of the technology.

**[00:40:49](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=2449s)**

Now, we know with HTTP that we've got get, post, delete, whole bunch of other requests that we could submit. We're using a get here, which is not what you normally use, but gets really easy for us to manipulate and change with the browser. I can just type in a new get here and submit that request. If it's a post, it's kind of hard for me to recreate in a browser. I could probably do it by amending the form, but with a get, it's easy.

**[00:41:20](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=2480s)**

I can just repeat that request. And there you go. I've repeated the request. It tells me user already exists. Again, this is the kind of thing that you would normally do in a proxy where you would replay the request because it's a get. I can do it straight here in the browser. But looking at this, I'm thinking now with a technical, not even a technical, with a testing perspective, if I change, if I manipulate these parameters, something different might happen. So the action might be delete, action might be amend.

**[00:41:52](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=2512s)**

There's a whole bunch of actions that I could probably put in here and change it. And I would use that as part of my testing because I'm observing what's going on. I can inspect it and go down into real detail and see the actual parameters and information that's going through. And I've got two different ways of observing the traffic. I can see it here in the URL and I can see it here in the network. And I can inspect using the elements tab.

**[00:42:18](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=2538s)**

I can interrogate and go real down into detail in this request. So there's a few testing possibilities in here. But what I want to also check is now that I've logged in or signed up, have I got any cookies? So, I'm going to look in the resources here at cookies. There we go. So, I've got a cookie in here. So, this is interesting because I've got the presumably that's a session number. I've got my I assume that's the user ID and not the name.

**[00:42:50](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=2570s)**

And then I've got my user type or something else. It tells me I'm an author. And we saw that is author is set up here to true. And we saw in the form that is author was a hidden field. So I don't know whether doing something as simple as changing the cookie will change my state.

**[00:43:09](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=2589s)**

Now out of the box with the resources and the cookies, all I can do is refresh and delete. So I know that there's a technique I want to use which is amending the cookie, but the tool that I've got doesn't support that out the box. Fortunately, we can add extensions to Chrome. So, I've got one installed already up here, a cookie editing tool. But if I didn't, I would know that there's a technique I want for editing cookies. I will go and find a tool to help me do that.

**[00:43:38](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=2618s)**

Now, if I can't do a plugin in the browser, I will drop down to a proxy, which will let me amend the request and change the cookie on the fly. Fact is, I can now build it into the browser. So, I can do it here. But remember in the past we were looking at what comes first, the tool or technique. Well, here I've already got the tool, so I know I can do it. I found this tool because I know there's a technique I want to use.

**[00:44:01](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=2641s)**

There's an approach I want to take. So I find a tool to do it. So by learning about the technology, the fact that browsers and web applications use cookies. So that technology information that technical information the notion that I understand cookies leads me to then evaluate the use of the cookie in the application then leads me to how can I observe that which I can do through the browser.

**[00:44:26](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=2666s)**

Now here how can I interrogate this information and how can I manipulate it? Well, I have to do a plug-in order to manipulate it. So let's manipulate it. So this is it here. author. I'm going to change that to admin. See what happens. I'll submit the cookie change. Let's get rid of that.

**[00:44:47](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=2687s)**

Let's do a refresh here. Yep, that's a change. So, let me do a refresh on the browser. And so, it's saying user already exists because we got that. So, that's kind of a mistake. Let me do the home. But I'm no longer logged in as that user. So, maybe this isn't a state cookie. Maybe it's some sort of key. I don't know. I'm testing, so I'm learning. I'm experimenting and seeing what's going on.

**[00:45:14](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=2714s)**

So, let me change this back from admin to author. That's what it was. Now, normally, I'd be making a lot of notes on this and I wouldn't have to remember what it was before, but because I'm talking about it rather than writing it down, I have to remember. So, let's refresh again. And we are logged in again. So, maybe that's the whole thing about getting an account back. Maybe that's part of the key. I don't know. I already know that if I repeat this request with the new that the user already exists.

**[00:45:40](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=2740s)**

So what we're going to try and do is see if we can amend that. So, I'm going to try and amend that and say Bob and say is I'm guess try and do is admin true and invalid request. So, I'm not sure exactly what was invalid there, but it's not taking that forward. Let me change that to author. Put it back to author. See if that helps. no. So, I think it doesn't like the amend. So I guess the thing to do then is to just have a quick look around and see what other functionality we've got.

**[00:46:29](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=2789s)**

So we got the profile there. If I scroll down. So there's the get to retrieve the that's not the get to retrieve the profile. There he is. Edit profile. So presumably it's doing the edit profile from the cookie because I haven't passed anything in the URL. So that's interesting. It might be that there's a vulnerability there about being able to view other people's profile if we just change the cookie information. So we could try that. We could actually try that because we already know that there's a person called Bri.

**[00:47:24](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=2844s)**

So, let's see if that works. We I'm assuming they're an author as I am. I'll change this to Brie. Submit the cookies. Then let's resubmit this page. And it's saying user ID not logged in. So presumably that session ID I'm assuming now that that's a session ID is quite important and is associated with the actual person.

**[00:47:53](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=2873s)**

So let me change that back to Bob head profile. So you can see that I'm able to experiment and change the messages that are going back forwards just in the browser here. So let's have a look at this form. So I'm going to inspect this form before I submit it. And again, this is a form that's going to do some updates, but it's a get, which makes our life as testers easier, but that's bad for the application in the security. And you can see that it's got an update.

**[00:48:23](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=2903s)**

So, I've used amend previously, but this is actually an update. So, what I'm going to do is amend this so that instead of being new, it says update. And I'll keep everything else the same. Maintain as an author and see what happens. So it's saying incorrect password. Now I know that's the correct password. But if we have a look at the form, let's have a look here. I suspect what it really means is not incorrect password, but simply the fact that we've only supplied one password.

**[00:49:07](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=2947s)**

When I do an update, which is what this form does, there's two password fields. One of which is PW and that's what we added in the other one. So that so PW is the new password and we need to an old password presumably for an update. So I'm getting this information from just inspecting the form here just interrogating what's going on. So I can see the old PW. So what I'm going to do is amend this URL. So I'm no longer passing in the password.

**[00:49:40](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=2980s)**

So I'm basically saying update where the user ID is Bob and the is author is true. Let's see what happens. So it's done. It hasn't complained. So presumably it's done an update but hasn't actually updated anything because we didn't change anything. So let's do that again with an update and the user ID of Bob.

**[00:50:16](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=3016s)**

Let's take out the password. Now this would be a little bit easier in a proxy because I would be sending a request and now at this point the request would be in front of me and I could just amend it in a form. But we're doing it in the browser. I'm going to change this to is admin.

**[00:50:32](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=3032s)**

Remember, there's two ways I can do this. I'm going to do it with the URL here, but I could have done it by changing the DOM in the form in the first place that had for signing up because I'm trying this in an update. So, let's change this to is admin. See what happens. And it's accepted the request, but nothing seems to have changed.

**[00:50:56](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=3056s)**

So, let's see. Well, there might be a couple of reasons for that. So, in resources, we've still got our cookie here set to author. So, I'm going to I'm going to change that and see if changing that to admin makes a difference. Let's see what happens. Refresh. Yep, that didn't work in terms of the home.

**[00:51:22](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=3082s)**

So, let's change that back to author. Now, clearly I haven't understood the technicality behind this. I'm just I'm messing about. I don't really know how this system works. So, let's make sure that we're still Yeah, we're still logged in. So, I'm going to sign out then sign back in again as Bob. Log in. See what happens. Ah, so look at the cookie. So we got a different session which you'd expect. We've got Bob and we've got admin. So that missing field was admin and author.

**[00:52:00](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=3120s)**

So maybe there's it shows you the different roles that you can have and we now have this admin functionality for manage the server. So we have the benefit that there are a lot of bugs in here because it's designed for security testing. But normally you'd be using a proxy server to do all this. The fact is the modern browsers are getting more and more powerful and allowing us to do the kind of testing we would normally do in a proxy itself in the browser.

**[00:52:27](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=3147s)**

So I encourage you to explore the functionality that the web developer functionality that you get from your browser. So here all the functionality that I used was resources looking at the cookie using the URL which you can do in any browser looking at the network traffic to see the requests that's very useful and I remember I set it on to preserve log upon navigation so it wasn't cleared between each page load and I was inspecting the DOM and I didn't actually do any changes in the DOM but I could have done I could make changes in the DOM to actually impact the application.

**[00:53:04](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=3184s)**

So hopefully that gives you some idea now of the power of the modern browsers for helping us test for augmenting our testing. But it's not the knowledge of the tool that helped me. It was the knowledge of the tool. It was the knowledge of the HTTP technology. The fact that there's posts and gets that led me to think in certain ways. The knowledge about just testing in general for knowing that I want to change the URLs that are passing in that's a common way of testing to force bugs through.

**[00:53:38](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=3218s)**

I know that I want to manipulate the data that's going through and back and forwards. I know that I want to observe. I know that the technology behind the cookies leads me to finding more tools that will help me. All these things work together. It's hard to know exactly where to start in that mishmash of where to learn. So just essentially learn everything that you possibly could. So if you haven't if if say you're coming to this new you do an inspect, you don't even know what body tag is.

**[00:54:05](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=3245s)**

You're going to look it up. You're going to start learning HTML because you're observing things that are going on because you're interrogating the page that's in there. You're going to use network. Then you're going to see the headers. If you don't know what the difference between a get header is, a get request, then you're going to look it up. This is going to start teaching you or you're going to use this to teach yourself and investigate because it's very important that we continue to learn and look things up.

**[00:54:29](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=3269s)**

Now, I could have saved myself a whole bunch of time by going to speak to the developer and ask them what's going on or read the instructions for this application, but I'm exploring and learning and manipulating, interrogating the thing that's going on, observing the traffic, observing the URLs, observing whatever is in place, thinking about it, reflecting on what's happening, then making decisions about what to do next.

**[00:54:53](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=3293s)**

Now, if I was doing this properly, I'd be making a lot of notes to support me. But I am recording this so I can look back at my recording and see what was happening because that's one way of observing what's going on with my test sessions. I can record them. And now the good thing about Chrome, I'm just going to quickly show you this. In the network tab, I can select a bunch of requests and I can output them as a HAR file, an HTTP archive file.

**[00:55:22](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=3322s)**

If you don't know what that is, now is a good time to look it up. It's the kind of thing that you associate with proxies, an HTTP archive file, but the Chrome browser supports that. So, I'm not going to go into any more depth in this tool, but I did want to show you it in action in the context of testing. So, you can see what a technical exploratory test session looks like just with the browser, pretty much just with out of the box functionality on the browser.

**[00:55:48](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=3348s)**

And you can see that I almost didn't need the cookie amendment because I was able to do a lot with the URL. So, I hope that helps put things into context a little bit.

---

[Previous: Applications to Use for Testing](../03-applications-to-use-for-testing/readme.md) · [Course overview](../../readme.md) · [Next: View Page Source](../05-view-page-source/readme.md)
