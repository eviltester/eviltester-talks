# Absolute Basics — Transcript

Technical Web Testing 101 · Alan Richardson

**Video range:** [00:03:15–00:15:45](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=195s)

Edited from YouTube's automatic English captions to correct obvious recognition errors, spelling and sentence breaks. Chapter headings follow the published video timings; paragraph links locate the edited passages in the full recording.

[Section overview](readme.md) · [Summary slides](slides.md)

## Contents

- [00:03:15 — Absolute Basics](#chapter-01)

- [00:06:25 — Should you maintain a Tool List?](#chapter-02)

- [00:09:20 — The MORIM model](#chapter-03)

<a id="chapter-01"></a>

## 00:03:15 — Absolute Basics

**[00:03:26](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=206s)**

So let's look at the absolute basics for technical web testing. Essentially, we know what it's not, right? Technical testing is not the tools. It's not the techniques. It's not automation. It's not programming. They are a side effect, right? They stem from us learning as much as we possibly can about computing, about our application, about how to work with the tools we're using, about how to work with the system, about looking at the infrastructure, about looking at the architecture. We're trying to build a very, very detailed picture of the context that we're working in.

**[00:03:59](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=239s)**

When we do that, we don't ignore any technical information whatsoever. We don't focus exclusively on the business stuff. We understand this from an interaction point of view, the absolute details of the messages that are going through as much as we possibly can, as much information as we can, and we explore around this. So, the tools help us do that because the tools let us investigate things we couldn't otherwise do. any techniques that we have help us around that investigation, peeling away the layers on the onion to go ever more deeper.

**[00:04:34](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=274s)**

Automation helps us by monitoring things in the background that we wouldn't necessarily do. But the point is these are side effects. They stem from the attitude of technical testing, the learning process, the investigation, the exploration. Sometimes it's hard to know where we enter this loop. What comes first: the tool or the learning? When you go through this course, you're going to learn about tools, proxies and specific proxies such as Burp Suite. That tool comes first because I'm teaching you about Burp Suite.

**[00:05:08](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=308s)**

Essentially, though, we're learning the technique of observing HTTP traffic; the tool lets us do that. Sometimes you start with a tool because someone says, 'You should try Burp. It's really good.' It's really good. And as you use that tool, the functionality in that tool informs the techniques that you can use, informs the level of observation that you can do informs the level of inspection that you can do. But sometimes it's the learning that comes first. It's your understanding the architecture that says, you know, we know that we are sending messages into this shared message bus.

**[00:05:46](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=346s)**

How can we observe those? And you go look for a tool to do that and it's the technique the notion that you understand some of the technicalities you know that you need to observe it or interact with it or manipulate it in some way so you go looking for the tool so this is a circular loop there's no easy point at which you come into it but it's important to know that it doesn't matter where you come in the tool when you've got it you look at the functionality that then teaches you new things and you learn new things.

**[00:06:18](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=378s)**

When you learn something about it, you go look for tools to help you. So, it doesn't really matter which comes first.

<a id="chapter-02"></a>

## 00:06:25 — Should you maintain a Tool List?

**[00:06:36](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=396s)**

One of the questions I get asked a lot is, "Do I maintain a tool list?" I used to. If you go on the compendiumdev.co.uk site, you may even find the tool list. I think I've taken it off, but it might still be there. I know a bunch of other people use tool lists, but I don't maintain one anymore because when I did maintain it, it was in the days before we had like ubiquitous search engines where the search engines were fantastic, where we didn't have all the filters that we could add in the search engines.

**[00:07:05](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=425s)**

If we learn how to use Google properly, we can find most of these tools really quickly because we know what technique we're trying to do. We know what technology we're trying to interact with. So we know what we know how to phrase the queries to get the tools we want. This was all in the days before we had RSS where I had an application that I wrote which read web pages checked for a checksum calculated a checksum from the text and looked for changes so that I could pull a whole bunch of websites.

**[00:07:33](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=453s)**

I had hundreds of sites that I would pull and spider and look for changes in the checksum all because we didn't have RSS. Now we do. I've got a huge RSS list. That's how I find new tools and techniques. People mention them in Twitter. We read a lot of blogs by virtue of having RSS. I don't need to maintain a tool list anymore. What I need to maintain is my technical knowledge to help me find tools and search for them effectively.

**[00:07:58](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=478s)**

That doesn't mean you shouldn't maintain a tool list because quite possibly you maintain a list of the tools that you use. Some of the stuff that you're seeing in this course are tools that I use. Having a list of tools can help new starters because they know what to install. They know what other people on the team have experience and expertise with. You've got tools that you know work in your environment. There are some proxy tools that you know do not work in your environment or you cannot install because you don't have the permissions.

**[00:08:26](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=506s)**

So you don't recommend those. You might maintain a list of tools that you want to research. And the whole point about these lists is these are very focused lists. These each of these lists has a name. One of the aims for the tools you currently use is this is my current tool set. This list you can use to go and install quickly and get running. But it's not a generic list. It's not a just a list of tools because we want a list of tools.

**[00:08:51](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=531s)**

I don't maintain a generic list and I don't advise you to maintain a generic list. It doesn't help you. Essentially, it looks like you know what you're doing. It looks like you've surveyed the tool environment when you haven't. You've just built a list. And a lot of the tool lists I see, people don't know how to use them. They've never used them. They're tools that they might want to research, but they're not categorized in that way. It's just a list of tools, and it looks really cool.

**[00:09:16](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=556s)**

Don't do that. Maintain lists with a purpose.

<a id="chapter-03"></a>

## 00:09:20 — The MORIM model

**[00:09:31](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=571s)**

So having said that technical testing is not about tools or techniques. However, this is my model. This is my guiding model. And I caution you to be very careful. This is my model. This is my mnemonic. This is my way of remembering these things. Never use another man's mnemonic model without fully integrating it in your own psyche, in your own way of approaching these things. And so this is a loop where I want to model what's going on. That's fundamentally what I think technical testing is all about.

**[00:10:04](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=604s)**

The modeling process. All of this is a modeling process. I want to be able to observe the traffic. I want to be able to think about things. I want to reflect on what I'm doing. I want to interrogate in more detail. I want to manipulate. This is the fundamental basis about how I approach technical testing. Everything I'm working with is a model. In my approach to web testing, I have a model of HTTP. So I have a listing of the various status codes in my head.

**[00:10:36](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=636s)**

I know which ones are good, which ones are bad, that kind of thing. I know roughly how the headers work. I have a model of the application that I'm testing. I know roughly how it works, but I know that it's layered. And I know that it's multiple models interfacing with each other. And I know that because it's a model, I have to explore it when I test. And I will ask questions of it. And when my model is vague, that's what leads me to ask more questions.

**[00:11:03](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=663s)**

That's what leads me to investigate more techniques or more tools or the technology in more detail or understand the architecture in more detail. It's that modeling process that helps me see multiple layers in the application so that I know I have to go continually deeper or I know that there's a possibility of going deeper, but I may not have time at the moment to do that. But it's the model process that helps me do that. And when I'm testing, I want to be able to observe what's going on.

**[00:11:31](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=691s)**

I want to be able to observe the HTTP traffic. While I'm testing, I want to be able to observe the changes in the database. I want to be able to observe the status on the application. I want to have the logs scrolling up and down on the screen. I want to know what is happening. I want to model the architecture. And then I want to go find out how to observe the different layers, the different flows, the different interactions. And I need to question myself.

**[00:11:54](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=714s)**

Do I understand what I'm seeing? Do I know how to interpret these observations? And I need to reflect. I need to have the ability to expand the model based on what I've learned. I need to analyze my observations. I need to think what does that mean? How does that fit together? Is my model correct or not? What risks are there? Because a lot of the reasons that we're trying to learn this at a technical level is to find risks that other people haven't found, right?

**[00:12:24](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=744s)**

There's plenty of people in the project that can find business risks. There's plenty of people in the project that can find project management risks. What we need to be able to find are the technical risks of trying to hook these things together. And some of those risks are going to be generic. We know what some of the risks are when we use databases. But some of the risks are going to be specific. We need to know what the risks are about using that particular version of that particular database.

**[00:12:49](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=769s)**

We need to understand that. What are the risks of that particular programming library? What are the risks of using that particular programming library when configured through annotations as opposed to XML? All these things we need to understand to work out how to target them with our testing. And when I observe what's going on, at some point I'm going to need to interrogate it in more detail. I'm going to need to deep dive into that observed data because at that point I'm focusing on that observed instance.

**[00:13:21](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=801s)**

I'm no longer observing all the other stuff that's going on at the same time. I'm interrogating deeply and I'm very focused on that particular element at that point in time. So that's the other aspect to observation because at that point we focus and we become blind to other observations that are going on and that's why we need to track things in a history. That's why we need to observe things automatically and be able to zoom in later on. But fundamentally it's not testing unless we can manipulate it.

**[00:13:49](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=829s)**

So for every part of the model, every layer in that model, every element that I can observe, I want to be able to manipulate it. I want to be able to edit the data in the database. I want to be able to edit the data that's passed through in the communication. I want to be able to change the state of the application. I want to change the environment context that it's working in the speed that the messages are passed in, the memory constraints on the machine, the speed of the network.

**[00:14:16](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=856s)**

I want to change everything in order to trigger the conditions that I need for my testing. So, I need to be able to manipulate this thing. So, this is a very high level model. It's a very simple model. Try to keep things as simple as I possibly can. And there's no order to this, right? We repeat all these steps. We do them in different orders. Tools, techniques, form follows function, function leads to technique. We do these in different orders because we're continually learning.

**[00:14:46](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=886s)**

We're continually asking questions at different times. But the point is when we reflect, we deliberately decide what to do next. We make absolute decisions and we know why we're making those decisions and we can explain it from a technical point of view. What risk we're trying to target, what question we're trying to ask next. We do it. The most important thing is that we actually do this stuff. And as we do it, we because we're observing, we can take advantage of what's going on.

**[00:15:14](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=914s)**

We can spot things that other people aren't. We can see that when we issued that request, suddenly the system got a little bit slower. We can try and investigate that in more detail because we were observing it because we understand it from a technology point of view. So that's the essence of what we're trying to get across with this concept of technical testing and I model it in terms of this MORIM loop. So model, observe, reflect, interrogate and manipulate. Do those things and you'll be doing technical testing.

---

[Previous: Introduction](../01-introduction/readme.md) · [Course overview](../../readme.md) · [Next: Applications to Use for Testing](../03-applications-to-use-for-testing/readme.md)
