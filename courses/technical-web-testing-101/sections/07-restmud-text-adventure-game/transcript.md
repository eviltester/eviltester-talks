# RestMud Text Adventure Game — Transcript

Technical Web Testing 101 · Alan Richardson

**Video range:** [01:50:49–02:09:35](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=6649s)

Edited from YouTube's automatic English captions to correct obvious recognition errors, spelling and sentence breaks. Chapter headings follow the published video timings; paragraph links locate the edited passages in the full recording.

[Section overview](readme.md) · [Summary slides](slides.md)

## Contents

- [01:50:49 — RestMud Text Adventure Game for Technical Testing](#chapter-01)

- [01:58:10 — Install and Start Playing RestMud](#chapter-02)

- [02:00:08 — How to Play RestMud](#chapter-03)

- [02:06:00 — Exercise: RestMud Single Player Game- Basic Adventure](#chapter-04)

<a id="chapter-01"></a>

## 01:50:49 — RestMud Text Adventure Game for Technical Testing

**[01:51:03](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=6663s)**

Okay. So this is RestMud. RestMud is a text adventure game that I've written for people to play as just as a game, but also to practice their technical web testing. So, in this video, I'm going to give you an overview of RestMud, what it is, and why we should play it and some idea of how to play it to improve your technical testing. So, RestMud is essentially a web server. I've got it running on my local machine. When you download it, you have it running on a local machine.

**[01:51:31](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=6691s)**

When it starts up, gives you a whole bunch of information. And it's running on port 4567 on local host. So I go off to localhost 4567 and I can see the initial RestMud screen. So if I click help, I'll see some instructions. It tells me basically there are things. I pick them up. I try and hoard them. There are some puzzles. I can do stuff. And you can see here some of the commands that we can use. I can take things.

**[01:51:58](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=6718s)**

I can drop things. Hoard things. And it s uses an item ID which hopefully is fairly obvious within the game but I could find it with inspect element and I can go in different directions like east, west, south, north. So let's start by looking. So if I do player user look, I look and I'm in the start room here. So I can see there's a whole bunch of directions I can go in. There's a teleporter button here. I could examine it.

**[01:52:28](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=6748s)**

So let's and there's some doors and they're closed. So essentially, I'm walking about and I'm doing things. So if I go north, so I go north, I look, I'm in the north room and I can see that there are no visible exits and there's nothing here and that nothing has happened. So I'm essentially in a room and there's no exit. So what am I going to do? This is a puzzle. It's it's the kind of worst puzzle in the world. What I'm going to do is I'm just going to go back the way I came.

**[01:52:57](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=6777s)**

But to do that, I'm going to have to amend the URL. So, I'm just going to go south and we're back in the room. So, this kind of suggests to me that I probably need to build a map. I need to start drawing a map so I know where I'm going. And that's what this game is about. It's about forcing us to think. It's about forcing us to explore, map, change URLs, inspect elements, things like that. So, I could go east.

**[01:53:21](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=6801s)**

Let's go east. And I can see that I can go south or go back west again. So, let's go south. And I can't go that way at the moment. So perhaps there's something I need to do. Perhaps there's a puzzle I need to solve. Perhaps this is a red herring. Perhaps I can never go south. And that's what this is. It's a text adventure. I'll show you how to play it properly in more detail in a later lecture. But I essentially grew up playing text adventures.

**[01:53:47](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=6827s)**

My favorite one when I was younger was called Mountains of Ket. I played it on the ZX Spectrum. cost me total of £5.50 when I was younger to buy this game and I have it running over here. And what was different about Mountains of Ket was it had statistics. It had like an RPG. There was luck, there were points, there was health, but it was also a text adventure. So, I could look I could see that there are different things here.

**[01:54:20](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=6860s)**

We're on a road. I can go east into the village. Let's go east. This is exciting. I'm in a crossroads. Let's go north. Oh, let's take the lamp. And these are the kind of normal commands that we have to issue. Take drop use. We can't we have to we can't just take that. We have to buy it.

**[01:54:46](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=6886s)**

So, let's buy lamp. The man says, "Okay, that's two coins. So what do we pay the man? What about man inventory? Okay, so when I said buy lamp, it bought the lamp. I just didn't understand that the message it was telling me. Okay, that's two coins that he had taken the two coins and we had paid all that kind of thing. So, one of the things we're doing when we're playing these adventure games is learning the world that we inhabit when we play the game.

**[01:55:18](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=6918s)**

We're building a model of the world that we're in. As we explore and play this game, which is very much what we do when we're exploring applications, we build a model of the application. We figure out what that application does, what its model of the world is. And I grew up playing these games. Essentially, I grew up, I think, learning how to test by playing text adventures. So, one of the other big text adventures that's out there is called Zork. So, here's Zork.

**[01:55:48](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=6948s)**

You can play Zork online. In fact, if you go off to things like textadventures.co.uk, there's a whole bunch of adventure games. If you type play text adventure online, you'll find a whole bunch of places where you can play different online text adventure games. This one here, I'm using a ZX Spectrum emulator called QAOP. And I downloaded the TAP file for this from the worldofspectrum.org. There's hundreds of old text adventure games. Zork is one of the classic games from Infocom. I still have a lot of the Infocom games boxed up there so that I can play them.

**[01:56:28](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=6988s)**

So in Zork and where are we? We're west of the house. There's a small mailbox here. Well, let's open the mailbox. There's a leaflet. Let's read the leaflet. Then we've got some instructions. That's quite useful. So, let's What else was here? There's a mat here. Let's examine the mat. It says, "Welcome to Zork because that's what it says on the mat." Well, let's try and lift the mat. That doesn't seem to do anything. We know that we're in front of a house.

**[01:56:57](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=7017s)**

So, there's a boarded front door. Well, let's open door. The door cannot be opened. Okay, let's just go east. See if that helps us into the house. That door is locked. There's no key. So presumably I have to find a key, figure out how to get in the house, solve some puzzles, wander about. If you want to practice with just a normal text adventure game, Zork is a classic, and there's lots of hints and tips on how to play this game.

**[01:57:24](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=7044s)**

I really like the infocom games. So I easily recommend this. And if you get into text adventure games, there's a whole bunch of things you can play. But essentially, what we have to do is experiment. We have to examine our surroundings. We have to look. We have to examine things that are in there. We need to interact, build a map, track what we do, write down the actions that we do. So, we have to keep a history of the verbs and commands we do because at some point we're going to die and at some point we're going to have to retrace our steps to get back to where we were to start testing or playing this game again.

**[01:57:57](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=7077s)**

Adventure games are a great tool for learning basic exploration techniques, basic testing techniques. And I've written RestMud to build on that and extend it further for technical testing and web testing.

<a id="chapter-02"></a>

## 01:58:10 — Install and Start Playing RestMud

**[01:58:10](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=7090s)**

So the next thing is to try and play a RestMud game. So, I've released a couple of games for RestMud. You'll find each game in a separate lecture, and that will have instructions of where to download the game. So, for the first game, this is the game that's free on the main website. I'll just download it to download the zip file. It's a Java app. So, what I'll do is I'll unzip that zip file into a folder. Then you see there's a read me which has some basic instructions for the game.

**[01:58:53](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=7133s)**

There might be some hints and tips in there. There's instructions on how to run it. But essentially what we've got is a JAR file. And to run this you'll need to have installed the Java runtime edition, the Java SE. Chances are you have this installed. So and it does need Java 1.8. So, if I get a command line up, if I type Java minus version, if you have Java 1.8 or 1.9, you'll be fine. You'll be able to play this game.

**[01:59:21](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=7161s)**

If you have Java 1.7, you'll need to upgrade your version of Java to 1.8 by going on to java.com and downloading Java for your platform. When I have it downloaded in a folder, I know I've got the right version of Java. I can do java -jar and then the name of the JAR file. In this case, it's RestMud single user basic test game version one because catchy names and titles are important. It will show me some messages telling me that it's added a user and it's on port 4567.

**[01:59:55](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=7195s)**

If you have anything else on 4567, you'll see an error message. Then once I'm on 4567, I'll just go off to localhost 4567 and then we can start playing.

<a id="chapter-03"></a>

## 02:00:08 — How to Play RestMud

**[02:00:10](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=7210s)**

And the game is on. So, in this video, I'm just going to show you playing one of my example games again, just to give you a little bit more idea of how to play this. I don't want to give away any hints on the games itself and the solutions to the game. So, I'm using an example game.

**[02:00:36](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=7236s)**

Remember the basic hints for how to play RestMud are change the URLs, observe the URLs, watch for common verbs in that URL pattern like go, examine, take, drop. You'll see the object ids in the URL when we try and take something. The object ID will be listed in that URL. We can inspect elements. Watch the log, this thing at the bottom of the screen here. Watch that as we play the game because you'll see more information in there. There's clues in the descriptions.

**[02:01:06](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=7266s)**

There's clues in the messages. There's clues in the log files. So, if I start the game. So, there we go. The game is running on localhost 4567. I've gone to the top URL to start. I'll do help. I'll do look to see where we are. And this is the examples I used in some of the previous videos. So, we know that if I go north, I'm in a room with no exits. So I can control what I can do through the URL.

**[02:01:37](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=7297s)**

This is like the command line parser or this is like the parser in text adventure game. It's a verb noun parser. I say go south. Let's examine this teleport button. Examine the corridor button. How did I know it's called corridor button? If I inspect, we'll see that this says corridor button. So, I didn't actually need to click the link. I can see that in the description here, it's saying corridor button for the visible objects ID. There are clues in here. So, there's a door to the south.

**[02:02:19](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=7339s)**

So if I open the door, and remember I could have done open south in the URL, but clicking on that takes me to that URL anyway. So now that that door is open, I should be able to go south. So we can open doors and gates, and we very often have to use things. So if I go back to the start room now, I'll go west.

**[02:02:39](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=7359s)**

Now, if I try and go south, it says I can't go south because the teleporter is not active. So presumably this button will activate the teleporter in the south and let me go south. So if I examine this button says you examine it, use the button to switch on the teleporter. Okay, let's use the button. So I'm just going to type in use teleporter button. The teleporter is now active. Push the button. Teleporter is scary. Do you want to through it?

**[02:03:08](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=7388s)**

Yes, let's go through it. So let's go south. There we go. And we've teleported back into the start room. And you can see down here in the log, there's all the descriptions of what's happening. And this is all in JSON message format here. This will all be produced out to the command line. And you'll see all this. And this is the output from the API. We'll cover the API later on, but there's a lot of useful information in here if you learn to read the logs.

**[02:03:37](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=7417s)**

And the logs are just output standard out. So they'll appear in the command line when you run the application. So we know that if there are things and I inspect them, they've got ids that we can use. Look here, I can see that in this location, the location has an ID. That could be useful. That's certainly useful if I start building maps because I don't need to write down the start test room or whatever else room. I can just write down the location ID and show north, south, east, west, things like that.

**[02:04:06](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=7446s)**

And you'll sometimes see different information in the descriptions. So it's worth doing inspect element. And as we do technical web testing, it's worth inspecting the elements, looking in the source, looking at the logs, changing the URLs, experimenting. This is what this game is designed to help you do. But I do recommend you keep a map because some of the games have mazes and it will get you in the habit of drawing diagrams of the systems that you're testing. Make notes down there.

**[02:04:34](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=7474s)**

Keep this is all to build up the good habits that you need when you're doing exploratory testing, particularly exploratory technical testing. Keep a history of the type of command you do. Now, in theory, I don't really need to keep a history because I could use the browser history and that will keep this. And then I'm starting to use the features of the browser to help me do my testing.

**[02:04:56](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=7496s)**

Remember, this is one of the things we need to do. Learn the features in our tools and use them in ways that help our testing that we might not otherwise figure out how to do these things. And remember, I can actually go to these links from the history that might be quite useful when we're playing RestMud. Anyway, the aim is to experiment. The aim is to play the game. The aim is to have fun. And there are some actual bugs in the games.

**[02:05:22](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=7522s)**

So you can actually test the game as well as play the game. So see how you get on. We haven't covered the API yet. The aim is just use the browser. If you want to hook it into proxies, if you want to try the API, if you want to do extra investigation in here, feel free. If you want to look at the free Java course I've got, try and decompile the game. Feel have a go like try experiment. Test this in as many different ways as you can.

**[02:05:48](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=7548s)**

It's on your machine. It's running as a local server. You cannot break anything in any bad way. There's no permissions involved here. Pull this thing apart and test it to the best of your ability.

<a id="chapter-04"></a>

## 02:06:00 — Exercise: RestMud Single Player Game- Basic Adventure

**[02:06:00](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=7560s)**

See how you get on, but make sure have fun because it's supposed to be a game. So, this is the first single player RestMud game that I released. You can find it on the CompendiumDev website, compendiumdev.co.uk/page/restmud. There's a little description about adventure games. There's a slide and the download instructions. So, you saw me do this already. Essentially, just download the zip file, unzip it in the downloads folder or wherever you want to put it because it's just a folder. I do recommend you read the readme.

**[02:06:45](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=7605s)**

It has some hints. Hit start. I get the command line up. And this will work on Mac as well or Linux. As long as you got the right version of Java. So remember, I'm using 1.8. You can use anything above. So 1.8 and above, it should work fine. java -jar rest single user blahy blahy blah.jar. And I had it running in another window. And that's the error message you'll see if you have you already have RestMud running in another window. And if that happens, close down anything that's on port 4567 and try again.

**[02:07:25](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=7645s)**

Then it tells me the game has started. It's listening on 4567. If I just go the top, we'll see that there's a total possible score in this particular game of 1170. Now, what I always want to do is have this window open and visible at the same time because I want to see the log messages that are coming through because that will give me some information. So, if I do help, I look. So, I am in the test game. There's a sign on the wall.

**[02:08:02](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=7682s)**

Let me have a quick look here. So, I'm looking. That's just a normal message ID location one. We've got the objects, visible object, a hint. Well, that sounds good. So, let's examine the hint. I think you can go south near the strong room. Okay. So, somewhere there's a strong room. Where will I go? Let me go south. There's the room in the south. There's another sign on the wall. This is room four. I'll tell you some more. You can go east when you think you can't go east no more.

**[02:08:37](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=7717s)**

Then you can read the sign some more. Okay, so that sounds fairly cryptic. There's probably a clue in there. Let's explore a little bit more. I'm going to go back north. Let me go north again. A dark room. Okay, so presumably there's ways of making rooms less dark. But I can't see in here, so I'm going to have to go south out of here. Okay. I don't want to give too much away of the game and the puzzles that were in here, but this is one of the first games released.

**[02:09:07](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=7747s)**

It's an early version of the RestMud engine. So, there are more bugs in the than the actual game engine than I expected there to be. There's a couple relatively serious ones I know about that give the player extra abilities that they shouldn't have. And always keep an eye on the console logs to give you a little bit extra information about what is going on. So you know where to get this. This is just on the main website. This publicly available one.

**[02:09:34](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=7774s)**

Feel free to discuss this one as much as you want and have fun playing the game.

---

[Previous: Incognito Mode](../06-incognito-mode/readme.md) · [Course overview](../../readme.md) · [Next: HTTP Proxies](../08-http-proxies/readme.md)
