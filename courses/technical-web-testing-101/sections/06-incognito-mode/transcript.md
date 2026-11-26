# Incognito Mode — Transcript

Technical Web Testing 101 · Alan Richardson

**Video range:** [01:26:46–01:50:49](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=5206s)

Edited from YouTube's automatic English captions to correct obvious recognition errors, spelling and sentence breaks. Chapter headings follow the published video timings; paragraph links locate the edited passages in the full recording.

[Section overview](readme.md) · [Summary slides](slides.md)

## Contents

- [01:26:46 — Incognito Mode - A Technical Web Testing Browser Challenge](#chapter-01)

- [01:32:27 — Exercise: Incognito Mode Challenges](#chapter-02)

- [01:35:32 — Incognito Mode Challenges Slide Retrospective](#chapter-03)

- [01:45:31 — Incognito Mode Challenges Live Example](#chapter-04)

<a id="chapter-01"></a>

## 01:26:46 — Incognito Mode - A Technical Web Testing Browser Challenge

**[01:26:59](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=5219s)**

Incognito mode or private browsing mode. one thing we might forget like when we're testing websites and applications on our own is multi-user interaction. The impact that one user can have on another. Because as testers, we often test on our own. We're doing it individually. So it makes perfect sense that most of our scenarios are going to be based on a single user interacting with the system because that's what we are when we're testing. We have to remind ourselves in those circumstances to go beyond a single user, right?

**[01:27:29](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=5249s)**

If we forget, we need a reminder. Incognito mode and private browsing mode is the browser's way of reminding us that we can go beyond a single user on the same machine at the same time in the same browser or in the same browser type. Right? On Windows, it's always been fairly easy to do this, right? You test in one browser, you flip up another browser, and instantly you got two different sessions on the same machine. On Mac, for some reason, there's a strange tendency to centralize and they centralize the cookie jar.

**[01:28:02](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=5282s)**

So, you find yourself in the situation where your tools are using a shared cookie jar. You log in on one tool in the browser and then you're logged in on another tool in the same user in the same session. Now, I find that extremely weird, but I when I identify those circumstances on the Mac, I learn how to do that. On Windows, it's it's slightly different because you tend not to have the shared cookie jar, but you share a lot of the internet connection stuff.

**[01:28:27](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=5307s)**

So, we have to be aware of what we are splitting up between the different browsers. Is it the session? Is it the entire browser context? Is it the use of the proxy? What is it? Incognito mode and the private browser modes make it explicit in the browser that you want different sessions. So, what we're going to do is try and explore that. I mean the way I think about this is that these modes create a temporary kind of secret session that does not share the history, doesn't share the cookies, doesn't share the cache of any other user session.

**[01:29:00](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=5340s)**

We've just created a separate session from scratch to work with. We've created a temporary session, one that will be deleted and erased when we close the incognito browser tabs. So it doesn't remember anything about what we're doing. And I've used incognito mode to create temporary session without a logged in user so that I can log in as the same user is in the other browser and check concurrent session handling for the same user. Right? When the user does one thing over here, is it reflected over here?

**[01:29:29](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=5369s)**

Can the same user log in twice into the same application at the same time? Quick way of checking those things. Also used it to login as different users and check multi-user conditions. Right? What happens if one user edits this item in the application before we click submit on the edits in the other browser? Log in as the admin on one browser and as a user in incognito and check the interaction. I do all this in incognito mode because it's in the same browser type.

**[01:29:59](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=5399s)**

Right? One thing that's very often important for us as testers is making sure that we're checking the functionality on the same browsers. So, if I have to do the admin in Firefox while the main user is in IE, I'm going to have to switch those rules around and do similar testing in a different place, if I can use the admin and the user at the same time in the same browser, that knocks out that browser for me. And this isn't big multi-user testing, right?

**[01:30:24](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=5424s)**

This isn't load and performance testing. This is just event-based testing where the same event happens on the same entity in the application from different interfacing entities, different users. And we can trigger the events out of sequence, right? Because the user thinks the entity is in a certain state, but another user has moved into a different state. So, we're triggering an event out of sequence. And we make sure that the entity can reject or handle these events in the different states that it's found itself in.

**[01:30:52](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=5452s)**

Now, when a browser supports incognito mode, I essentially have the ability to test as two users on the same browser type and version at the same time. So, I use it for multi-user testing, but I also use it just as a temporary way to clear cookies and start a fresh, right? Just very quickly, new session, bam, as a as a quick way to check the functionality with a clean slate. When things go wrong and I'm not sure if this is a cookie problem, is a caching problem, what is this?

**[01:31:17](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=5477s)**

I might jump into incognito mode and just quickly check that. Now, we have the benefit that this functionality is available in all the major browsers. The actual feature set exposed is slightly different for each. So we have to explore that feature set to make sure and we know how it works on each of the browsers because it's slightly different on it's subtly different on some of these browsers but in general I mean in Chrome calls this mode incognito mode and you can access it from the tools menu or just right clicking on a link and open it in incognito mode.

**[01:31:47](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=5507s)**

Firefox calls it private mode. You can access it from the tools menu or right clicking on a link. There's a theme here which IE and Edge then ignore because in IE and Edge it's called in private browsing and you access it from the tools menu. You don't you can't click on links and open them in private mode. Safari calls it private mode and you can access from the menu and also from links. When you do the exploration around this, Safari is worth investigating because it does it in a slightly different way from the other the other browsers.

**[01:32:15](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=5535s)**

And we need to get in the habit of using the incognito mode. This is a really simple feature, but it opens up a lot of flexibility to you as a tester very quickly and easily. So, if you haven't been using incognito mode, this is a good time to investigate it and see what it can do for you.

<a id="chapter-02"></a>

## 01:32:27 — Exercise: Incognito Mode Challenges

**[01:32:40](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=5560s)**

Your incognito mode challenges. So, first of all, what do you believe the incognito mode should do? Right? Start with your beliefs and assumptions around this functionality. Write down what you believe incognito mode should do. do you think you should get a unique history? Do you think you should have unique cookies, unique bookmarks? Should each tab or browser be a completely unique session? Right? What do you think should happen next? Find the official documentation. Right? Find the official documentation for each of the browsers you use.

**[01:33:13](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=5593s)**

You might discover functionality when you explore this which is outside the official documentation. I mean you also need to know where to go back and look in the future because the browser is going to change. So have they added any new features in this incognito mode because if you start relying on your testing you need to fairly know that it is giving you new cookies or it is giving you a clean cache or whatever it is that it does. You need to know that so you can check back to the official documentation in the future once you know where it is.

**[01:33:41](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=5621s)**

I want you to identify all the ways that you can start incognito mode for each browser. It's different in the different browsers. You need to know how to start it up. Look for the shortcut keys. Look for where you can right-click. Which menu is it from? Find the different ways of entering incognito mode for the different browsers that you use. Also figure out what does incognito or private mode actually do in each browser. So check your beliefs about what incognito mode does, right?

**[01:34:09](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=5649s)**

Does it actually maintain a unique history? If you think it does, your beliefs that you've written down will give you a checklist of what to look for in incognito mode. Identify what is shared and what is unique to the session because the things that you believe might happen might not actually be covered by the functionality.

**[01:34:28](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=5668s)**

Now, having done that exploration, I want you then to reflect on the incognito mode features. Is there anything missing from the incognito mode? How can you fill that gap? Right? We will have other challenges and other sections later on that will identify ways of filling some of those gaps. But you should work out what does it not do that you would want to be able to do in the future. For the things that are missing, you can also look at is that a limitation or is that a benefit to you when you use this functionality given that this is a quick win functionality.

**[01:34:59](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=5699s)**

Does that help you? And also think about how do the different variances in incognito mode between browsers help your testing. What is one browser good for that another browser isn't. Now having done the exploration I then want you to test an application using the incognito and private mode. Right? This will drill into you what you do and you will get to see whether your testing approach is different as a result of using this feature. Right? Focus on this feature when you test and see how you test differently.

**[01:35:30](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=5730s)**

And check the attachments of this video. There hopefully is a PDF of these challenges listed out.

<a id="chapter-03"></a>

## 01:35:32 — Incognito Mode Challenges Slide Retrospective

**[01:35:45](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=5745s)**

Remember, if you have not done this exercise and you go ahead now, you will learn information that could be useful for you. You might shortcut your learning. You also cut down on the ability to learn this from scratch, which is going to be important for features we don't cover in this course. It's going to be important when the browser changes and you need to learn. We need to get in the habit of exploring this ourselves, then taking lessons and experience from other people.

**[01:36:11](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=5771s)**

So, let's start. I find this interesting because I have used the incognito mode for years, but I'd never really analyzed it or thought about it in detail. When I was thinking through what should incognito mode do I was thinking well really it should handle downloads. I don't want them tracked. I don't necessarily want to see the downloads from the previous runs in the non-private downloads. I don't want that. Essentially all of this is I don't want bleed over right from non-private to private.

**[01:36:38](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=5798s)**

The cookies should be completely separate. And plugins should probably be completely separate so I can choose what to install, what not to install. Some of these might bleed over into non-privacy if I and if I'm not aware of it and that might impact my testing cache should be separate so that when I go into incognito mode I know that it's downloading the page for the first time and not bringing it from the cache. I'm clearly I'll be able to check that through a proxy but I assume that the incognito mode would do that.

**[01:37:07](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=5827s)**

Ideally, I would like multiple private sessions so that each tab was a new private session with a different cookie jar so that I'm I know that I can create multiple private sessions when I want. Essentially, I would probably hope that the proxy settings could bleed into the incognito mode. History, I'd expect it to track the history in incognito mode, but lose it at the end of the session and I wouldn't be able to see the history in the other tabs and that I should be able to access the development tools.

**[01:37:35](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=5855s)**

Now, clearly not all of that you will know from your experience happens, right? History is useful if we can access the history of the non-private tabs because we might want to go back to test environments that we've used before. That would be a useful thing if it doesn't do it. It's useful to track the history within a private session because then I know where I've been and I've got some logging automatically through the history. But if it doesn't track the history, then I know that in my testing logs and in my notes, I have to maintain a history because I don't have the automated way of doing it.

**[01:38:08](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=5888s)**

So I find it interesting that my beliefs about it didn't actually match the reality of what these incognito modes do. So I looked at and again this isn't well formatted simply because it's taken directly out of my notes, right? I type these into a text file. I use markdown as the way that I write it. So it doesn't necessarily look as good when I copy and paste it in here, but it means that there's a PDF attached to this lecture which has this information in it.

**[01:38:37](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=5917s)**

So we I learned the shortcuts. I was surprised that some of the browsers did not have shortcuts. I learned that some of the browsers did not have the ability to click on links. Safari was an interesting one. Safari, interestingly, comes out probably, I don't know if it comes out the best or not, but it certainly comes out as the most extreme, right? With each private tab, each private browser being completely isolated from the rest. That was an interesting thing to identify, but I've been experimenting more with the shortcut keys.

**[01:39:08](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=5948s)**

It's interesting that we only really have two to learn, like the Ctrl+Shift+N, Ctrl+Shift+P, or the command shift N when we're on the Mac. So, that's interesting. That's there's some consistency there. I did find the official documentation. Clearly the links are not well format here, but they'll be in your PDF file. If you find any other ones, then add them in the forum associated with this lecture. But it's good to know where to go back to. And it's interesting that to read the minimal amount of information that you see on the help file.

**[01:39:37](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=5977s)**

It doesn't really stress that incognito mode is a great mode for testing because the documentation isn't aimed at testers. So I looked at these browsers, Chrome version 48, Firefox 43, IE1111, MS Edge, Safari 9. MS Edge I did through the virtual machine. IE1111 I did on a Windows 8 machine. So in Chrome, the cookies were separate. That's good. The extensions, Chrome's probably got the best extension handling. So I was able to use LastPass in both incognito and non-incognito. But I have to enable LastPass for incognito mode.

**[01:40:15](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=6015s)**

It doesn't happen automatically. There's only a single incognito session. So I've got my main session. I go into incognito mode and every incognito tab at that point is the same except when we use the user profiles. When we use the set up different user profiles in Chrome, each of those user profiles is a main session and each of those user profiles can have an incognito session. So I could in theory if I had two user profiles I could essentially have four sessions going at the same time.

**[01:40:46](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=6046s)**

That might be very useful. The hard part with incognito sessions obviously when you got multiple ones going is telling them apart right that becomes worse with Safari where everything is a completely unique session. But if we can handle that switching between different tabs and we know what they're doing, multiple incognito sessions could probably be very useful. Perhaps you have them in different monitors, different, virtual screens within your system. I don't know how you choose to handle it. I think the sensory overload for multiple incognito sessions is probably too much for me to handle at the moment.

**[01:41:16](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=6076s)**

It's not something I've used, but it's good to know that I can do in Chrome, and it's good to know that I can do in Safari. So, Chrome just doesn't maintain a history when it's in incognito mode. The proxy sessions are the same. So, we know that proxy sessions are something that really live at the browser level and not at the session level. The dev team tools all seem separate. That's useful. What I found interesting is when I was exploring this, we started to see that the search bar or the omnibar in Chrome has all these different extensions.

**[01:41:44](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=6104s)**

Chrome extensions, Chrome downloads, Chrome history. So, I really need to start maintaining a list of this so that I know the functionality that the omnibar gives me as opposed to just the working through the menus and knowing that I just use it for searches. It also was interesting that the downloads is shared for everything and that although the history is not maintained when I do jump to history from incognito I jump to the history in the main tab. So if I'm testing an incognito mode and I have been visiting a test environment in the history list it's there for me to use and I can copy and paste it into the incognito mode.

**[01:42:23](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=6143s)**

Firefox again cookies are not shared. I mean universally cookies are not shared. We get a clean session with the cookies. The extensions in Firefox were enabled in both. I couldn't see a way of switching that off. Again, there's only one incognito session. So, or like one private session. So, if I create a new private tab, it's the same cookies as the previous one. So, in Firefox, I have main user private tab. So, the downloads are separate. So, we have a private downloads tab and they're not shown in the main downloads.

**[01:42:53](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=6173s)**

That was interesting that it maintains that separation even though that's done at the browser level and indeed downloads Firefox has got a really good download manager which we'll cover in a different section. History is not tracked for private. It's not that it tracks it and loses it, it's just not tracked. And again the main history is available to both so we can access previous environments. Proxies again live at the browser and dev tools seem separate. So I've essentially Firefox for me is main session private session.

**[01:43:21](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=6201s)**

It's just a quick win. Clear. Clear the session. Start a fresh. I.e. again. Clear the session. Start a fresh. We've not got any cookies. We see that the autofill is available in the non-private but not in the private because we don't save the passwords. There's no add-ons in private that I could find in IE111. And again, it was a single in private session. So, I've got the normal user session and I've got a private session and all the different private tabs and private browsers are exactly the same.

**[01:43:49](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=6229s)**

Again, it was interesting that the download lists are separate. I thought that was interesting. And the history is not tracked for private, but I've I do have access to the main history. And again, the proxy settings are at a browser level. Edge was much the same as IE, but Edge doesn't have any add-ons. And the downloads were shared this time. That was a that was a difference. The downloads were shared. Safari was interesting. Safari was the one browser where a private session is private, right?

**[01:44:17](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=6257s)**

And you can have multiple private sessions and multiple private browsers. You could like really go to town with this. I do not know how I would maintain the cognitive load of knowing what is happening in each private sessions. But I guess if you're testing an application which lists on screen which user you're using then having multiple private tabs could be really really useful and Safari might be a good browser for that. Firefox I edge I've written here seem to be most limited.

**[01:44:42](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=6282s)**

Essentially it's the most basic. You're basically creating a clean session. cookies not shared. Wham, quick, you're in incognito mode. You test something, you come out. That's useful. I was surprised to see that combining users with the incognito in Chrome gives me more scope for having more incognito windows. That's something I probably will use in the future. And the extension mechanism, switching them on and off, I thought was useful. Safari, I don't know how I'm going to use that many incognito tabs, but it's really useful to know that it is there.

**[01:45:09](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=6309s)**

But the basic thing is incognito mode is a really simple feature to use, right? is really simple to access. We should use it more. It gives me the ability when I'm testing to quickly check whether a problem is related to the cookies or whether it's related to new sessions without having to start in a different browser because the problem might not be replicable in a different browser. I want to replicate it in the same browser. And this gives me a clean way of doing that.

<a id="chapter-04"></a>

## 01:45:31 — Incognito Mode Challenges Live Example

**[01:45:44](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=6344s)**

So now I'm just going to do a little bit of testing with the incognito mode in Chrome. So here I've got a small application running locally on my machine. It's a multi-user application. There's three registered users here. So I'm just going to log in as one of them.

**[01:46:00](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=6360s)**

Let's log in as Bob. All right. So Bob can see that Alan the Mighty is also here. So, let's log in as Alan. And so, I'm gone into incognito mode with the little incognito mode symbol there. So, Alan can see that Bob is here. Bob can see that Alan is here. Now, let's introduce a user that isn't currently present. So, normally because I've got a real browser and an incognito browser, if I get up another incognito browser, let's see what happens if I look as Alan.

**[01:46:46](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=6406s)**

So, I can see that the incognito browser is sharing the same cookies. So, I can't log into another person here. Let me create a new browser here. If I log in as or if I take Bob's URL here, if I'm sharing the same cookies, then Bob will be logged in. So yeah, so at the moment I can only do a maximum of two users.

**[01:47:05](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=6425s)**

However, if I start using the Chrome personas and if I switch person here, going to go to demo user and Bob is not found. So we're not So this is two main windows and we're not sharing the cookies between these. That's good. This means this is a completely new user. So what I'm going to do is I'm going to log in here as the whiz. So the whiz is a kind of admin user for this game. So I do not want Chrome to save the password here.

**[01:47:45](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=6465s)**

So it's in main mode. So that's interesting. The first time we've gone to that. So it's asking me. So now if I look again with Bob, we can see that Alan is here and so is the whiz. Now, if I This is like a magic trick. Look, nothing in my hands. And then I open my hands and look, we've got another browser. So, I'm going to go into incognito mode here.

**[01:48:03](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=6483s)**

Now, we saw the incognito mode was sharing the cookies from here. If I try Alan in here, which is an incognito one, Alan's not in here. So, this incognito one is completely isolated from this incognito one. And essentially is incognito mode of this browser here. So, I can have four players online here at the same time. In the same browser. So, here we go.

**[01:48:35](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=6515s)**

Let's see. Can Bob see Eris has arrived? Yes, he can. So, what we can now do is everyone's in the same room. There's a pendant sitting there. So, I'm going to get Bob to take this pendant. So, Bob's taking it. He's going to have a look. Yeah, there's no pendant there. Is it in his inventory? Yes, it is. So, what I'm going to do then is I'm going to ask Eris to take it and Eris can't take it. So, we've we're doing a basic multi multiple user test here where we're checking the state of the pendant entity which was in a taken state by Bob.

**[01:49:11](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=6551s)**

The errors thought it was still there. So, we're just checking that that state was maintained and wasn't maintained in each user session. So, I can move around to the different rooms. Bob's going to move. Eris can't see Bob because Bob's in the East Room now and we're just moving around like this. So now I've got essentially different sessions. So I could check for more states and do the same basic thing.

**[01:49:31](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=6571s)**

Now the hard thing when you're doing multi-user testing like this, I mean it's going to be moving between windows, remembering who is where is going to be hard. But fortunately in the URLs for all of this, I've got the player ID so I know exactly who I am in each of these windows. That's quite handy. Essentially, I'm testing this whole game in Chrome at the moment. Normally, or previously to learning about incognito mode and the combination with the user profile, I would have had to bring in multiple browsers here to do this on the same machine.

**[01:50:02](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=6602s)**

But I could in theory just keep adding new user profiles and new incognito mode and I'd be able to test as many users as I can. But it's not really a multi-user test in the sense that they're not kind of simultaneous users. So, if I say take this here and take this here, I'm not doing it fast enough to do anything. We already took the pendant, so that wasn't a particularly good check.

**[01:50:24](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=6624s)**

Let's try the gold ring. Take take. So, it's not quite fast enough to in system terms. That was like miles apart in system terms. But, I was really going to test this properly. I probably want to do it with a performance test tool, hitting the requests super fast to see whether hitting them in really close combination helps. But having them as half a second apart in system terms is way too long. But that's a quick demo of the incognito mode style of testing that I was doing.

---

[Previous: View Page Source](../05-view-page-source/readme.md) · [Course overview](../../readme.md) · [Next: RestMud Text Adventure Game](../07-restmud-text-adventure-game/readme.md)
