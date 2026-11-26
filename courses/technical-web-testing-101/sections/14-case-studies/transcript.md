# Case Studies — Transcript

Technical Web Testing 101 · Alan Richardson

**Video range:** [05:47:54–05:59:57](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=20874s)

Edited from YouTube's automatic English captions to correct obvious recognition errors, spelling and sentence breaks. Chapter headings follow the published video timings; paragraph links locate the edited passages in the full recording.

[Section overview](readme.md) · [Summary slides](slides.md)

## Contents

- [05:47:54 — Testing redirection from www to mobile site](#chapter-01)

<a id="chapter-01"></a>

## 05:47:54 — Testing redirection from www to mobile site

**[05:48:18](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=20898s)**

So, here's your scenario. You've got a main site and a mobile site, and you've just implemented some redirection rules so that when the user on a mobile phone hits your main site, they bounce off to your mobile site. So, how are you going to test that? So, here's the kind of thing I'm talking about. I'm using the BBC as an example here. This is the main site. If I hit this with a mobile device, I'll bounce off to m.bbc.co.uk and we'll get a slightly different experience and slightly different formatting.

**[05:48:45](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=20925s)**

Now, this is done by the use of the user agent in the HTTP headers and you can get a list of all the user agents off on things like useragentstring.com. There's a lot of information about out there on user agents. So, the basic thing you're thinking, how could I test this? How can I test going to the bbc.co.uk and getting redirected to this? Well, I could get a bunch of devices. We could decide on a set of devices and say, "We support this device list.

**[05:49:15](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=20955s)**

Let's test on these devices and these devices only." And that would that would work, but you'd be limiting the amount of testing you could do. And you probably missed a lot of conditions. So what I'm thinking is it's a technical test in that there's just a user agent. I don't actually need any devices. If I hit a request on with just a user agent, I can do that. So, what I really need to do is find a way of spoofing the user agent when I go in.

**[05:49:39](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=20979s)**

Now, I can do that with Chrome pretty easy now. And that's how I did this in here. In Chrome, if I just go into the inspect element and over here in the tools, I can hit the override. I can override the user agent. So, I can be on iOS 4. Here, I'm going to change the device metric so it looks like iOS 4. And hopefully now if I go on to bbc.co.uk here, it will redirect me off to the mobile site.

**[05:50:09](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=21009s)**

So there's a list of user agents in here. I could just use them, but then I'd be limited to the user agents that are in the Chrome by default, but I can add my own. It's not a problem. I can add my own user agent in there. But again, it's going to take a long time to do that manually. And I'm thinking whenever I'm faced with a problem that has a just a data sc a data set variation and in this case that's all it is.

**[05:50:37](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=21037s)**

We've got a lot of user agents that we could use. Let me show you some of these. So the user agents string.com has a whole bunch of lists of user agents. Look at this. Look at all these user agents. And these are from different browsers, different browsers over time, different versions. What I could do is just get a whole bunch of these, iterate over them, go off to the BBC site and check that I'm actually redirected to this. So that's what I do this.

**[05:51:13](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=21073s)**

So it's this fairly simple automation problem. Now, I wrote this for a client a couple of months ago, long time ago. And I'm reusing it again on another client site. So, I've pulled this script out. I'm going to release it on GitHub. Somewhere in this video, there'll be a link to the GitHub code. But, let me just quickly show you what it does because it's very simple. And I'm not pointing this out as really good automation code. I'm just pointing this out as sometimes we want to do the simplest thing we can as fast as we can.

**[05:51:44](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=21104s)**

We don't come out with an elegant solution. We just come out with something very simple. And here I could use Java HTTP libraries. I've chosen instead to use PhantomJS and the GhostDriver on web driver. Why? Simply because it makes it easy. That's that's why I'm doing it. It's easy to incorporate into my project like that. All I have to do is incorporate is bring in Selenium and bring in the PhantomJS driver. All I have to do is download the PhantomJS from the PhantomJS website.

**[05:52:21](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=21141s)**

So I get the executable so that I can actually use this. My test is very simple. What I do is I make a couple of checks to make sure the driver is present, the executable. And what I do is I go off to the user agent string.com. I go off to a couple of pages on there and just pull off the user agent list I'm looking at. So you can see here I'm going to a couple of those pages. One of the ones we one that we saw and I look for anything with ul li a selector.

**[05:52:53](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=21173s)**

If I go back to the page, you'll see what I'm doing. So I'm going off to one of these pages and I'm basically looking for a ul li a selector which has the user agent string in there. And I'm just pulling all of these off the page. So, I'm scraping this stuff off. There's probably better ways of doing it, but when I came to do this, I was looking for very simple way of doing it. That was the simplest way that I could see of doing it.

**[05:53:23](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=21203s)**

Then I look through the list of anchors that I'm looking for. And if it's got Blackberry or if it's got Android there or if it's got BlackBerry with this semicolon, a whole bunch of conditions I check for, then I'm taking it as a mobile device and it should be redirected. Now, I have no idea how the BBC tested this or any of the other sites testing this. I know how my client tested this and when I ran this against their site, we they missed out 110 different devices.

**[05:53:53](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=21233s)**

I was able to double check against the BBC and the BBC only missed out I think it was one three devices. One one or three devices, can't remember exactly, but we'll see in a minute when I rerun this. Now, the test is very simple. Having got a list of user agents, all I'm going to do is choose which site I'm going to redirect from. Then, iterate through those agents, hit the main site, and check that I've been redirected and keep a list of those that failed.

**[05:54:26](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=21266s)**

That's pretty much it. You can look at the code in detail. This isn't really about the code. This is more about the approach. It'll be on the GitHub site. Now, if I run this, which I've just done, there's the main TFL site. And why am I choosing these as live sites? Because these are paid for out of my taxes. So, I am allowed to do whatever I want to their websites. So, there's TfL. TFL has got a mobile redirect. I went in there as a iOS phone and it redirects.

**[05:55:00](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=21300s)**

Now, what's interesting then is having run my script against this, I've got a list of three user agents that failed to redirect. That's not that bad. When I pulled off the list of user agents out of the user agents on the site on the user agent string site I found 10,830 possible user agents I could have used the filter that I put in place we brought that down to a list of 166 out of the 166 six user agents that I tested this site against.

**[05:55:46](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=21346s)**

It failed on three. So, what I can do now is I can look up these user agents, double check whether they are actually mobile devices and see if it's anything that we actually care about. So, what I'm doing here is I'm scraping a list of oracles because I don't know what the real user agents are. I know what we've decided on a project, but I can go out and find real things in the real world and use those.

**[05:56:11](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=21371s)**

Now, I don't know whether this is a problem or not. We then pass this up to someone on the project to make a decision about that. This is all about using real world oracles and real world information to validate this stuff to check the decisions that are being made on your project. Now, I know that this is way better than the project I was working on because when I run that against our project, we had 110 115 failed things. We didn't do as good a job as TFL or BBC.

**[05:56:43](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=21403s)**

If I run this against the BBC, I think we get one thing failed. Now, I could make this a lot faster by not using the web driver, by not using GhostDriver. Then what I'd have to do is parse the XML and find a different way of scraping this stuff off because web driver has the ability to find the elements in the page. This seemed like an easy way of doing it. I could write all the user agents I found, the candidate user agents out to a file.

**[05:57:12](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=21432s)**

I haven't done that yet because I'd have to spend some time writing some code to write to a file and read to a file. That's not a long time. But since this test only takes about 15 minutes to run, it didn't seem worthwhile given the amount of times that I've run it. If you choose to do this, you might choose to write these files and read them to make it a little bit faster on your project. I could in the output report instead of just outputting the user agent, I could build an HTML report that actually links back to the user agent on here.

**[05:57:48](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=21468s)**

If I've scraped this off, I could link back to that user agent which has some description that would make it easier for me to check whether the thing failed. There's a whole bunch of things I could do to extend this automated test. But what I've done here is write something quickly that scrapes a bunch of user agents that fires up against the website that does a very simple check that we've been redirected because I'm checking that the new URL has m dot instead of the wwww dot.

**[05:58:22](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=21502s)**

Kept this as simple as possible to do some testing really quickly that if I was doing this manually to test 160 different user agents, I'd have to need 160 different devices or manually do it through Chrome. And there's no point in doing that. But there's also no point in saying that we always do it manually or we always use the real device or we always have to do it through a browser. If we boost our technical skills to even have just a little bit of automation in there, a little bit of scripting.

**[05:58:55](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=21535s)**

You can do this in pretty much any scripting language. I haven't even written an app for this. This is just a test in JUnit that does this stuff. Kept it really simple. It adds a lot of value and it didn't take a long time to write, but it allows us to check against real world oracles. And also you come out with a list and you say, "We failed on 115 different user agents and the project is likely to say that doesn't sound important to us.

**[05:59:24](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=21564s)**

Why would we care?" If you run the same test against the BBC and it fails on one or the TFL and it fails on three, then you have a comparative oracle to say, "Look, in the real world, other people are doing way better than this. You might want to care about this." So that's pretty much all I was going to show you here. It's very simple use of GhostDriver. GhostDriver is a headless browser, so you don't see it when it's running.

**[05:59:48](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=21588s)**

I'm using real world oracles. I'm doing very simple checks and I haven't spent a long time making this do everything that it possibly could. So, have a look through the code if you're interested. Otherwise, keep in mind if you're doing simple manual checks and if the data set is all that's varying, you can probably automate it very quickly.

---

[Previous: Virtual Machines](../13-virtual-machines/readme.md) · [Course overview](../../readme.md) · [Next: Final Section](../15-final-section/readme.md)
