# Test Tribe AMA 2019 — Caption Transcript

Alan Richardson answers questions about testing and automation in testing. The original session streamed on Facebook Live; The Test Tribe later published this recording on YouTube.

- [Watch the full recording](https://www.youtube.com/watch?v=I_IK_Q6LwRM)
- [AI-generated question-and-answer summary slides](../ama/slides.md)
- [Summary slides — PDF](../ama/export/slides.pdf)

## About This Transcript

Source: YouTube English automatic captions (`en-orig`), retrieved on 25 November 2026. Caption text remains uncorrected, including recognition errors, repetitions and false starts. The transcript has not been checked word for word against the audio. Paragraph breaks, timestamps and question/answer divisions have been added for navigation. The question topics and section boundaries are AI-generated editorial additions; they do not replace the recorded wording.

The full caption text is retained, including the introduction, live-comment asides and closing. No original presentation slides accompanied this AMA. The separate summary deck was created from this recording and is not an original 2019 slide deck.

The website describes the event as a 2019 AMA, with June in its heading and 24 May in its logistics. YouTube records an upload on 1 January 2020. That upload date does not establish the date of the original Facebook Live session.

## Questions

- [Question 01: How should a team choose automation tools and abstractions?](#question-01) — [03:46](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=226s)
- [Question 02: How can we automate testing for IoT devices and wearables?](#question-02) — [15:10](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=910s)
- [Question 03: What can we learn from automation failures?](#question-03) — [18:25](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=1105s)
- [Question 04: Which daily testing activities should we automate?](#question-04) — [21:01](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=1261s)
- [Question 05: How can we create useful training videos?](#question-05) — [25:21](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=1521s)
- [Question 06: Which processes should every testing team practise?](#question-06) — [27:22](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=1642s)
- [Question 07: Where did the Evil Tester name come from?](#question-07) — [30:18](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=1818s)
- [Question 08: Can scriptless automation help a testing career?](#question-08) — [35:03](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=2103s)
- [Question 09: What does Alan think of Katalon Studio?](#question-09) — [38:44](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=2324s)
- [Question 10: How can testers obtain better environment support?](#question-10) — [40:06](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=2406s)
- [Question 11: How can testers decide whether to specialise in automation?](#question-11) — [44:14](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=2654s)
- [Question 12: How should we assess progress in automation?](#question-12) — [50:29](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=3029s)
- [Question 13: Does code coverage help with web automation?](#question-13) — [54:18](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=3258s)
- [Question 14: Should developer and SDET interviews use the same coding tests?](#question-14) — [56:10](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=3370s)
- [Question 15: With no automation, which tests should we automate first?](#question-15) — [59:59](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=3599s)

## Introduction

[00:00](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=0s)

welcome to the channel tribe this video is a part of I am a series in this episode we are having Alan Richardson talking on the topic testing and automation in testing Oh my name is Alan Richardson and you can find me Evo tester calm and there's been a bunch of questions I saw come in through the Facebook forum so people are just people joining now I can see that so the etiquette around this I'm not sure about because I think we've passed

[00:35](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=35s)

the time when we're supposed to start so I'm just going to start and everyone else can catch up so I'll try and see everything that is irrelevant at this point in time and if there's any new questions I'll see hopefully comments in this EM forum or and Mahesh can instant message me because I've got Twitter there so I can see their messages so the aim for this is to answer as many questions as I can on topics that people are interested in and people who put them forward live can work well and if

[01:14](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=74s)

there's engagement but there's so many questions there I'm just gonna work through them and start that way okay so I'm assuming comments is real-time and video is buffered and if you do get issues with the video just stick on pause for a little while hopefully I'll creep up because the broadband in the UK is not good or at least where I live so when the interesting things that came through from all the questions is there's a lot of focus on automating and just in general automating can be hard simply because it requires a huge amount

[01:50](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=110s)

of experience to do well right that's why people feel with automated execution when they're doing programmatic execution through programming languages because you do need a lot of experience with programming and design and testing and general automated work but it don't have to just use programming tools in order to mate there's a lot of cordless type testing tools free keyword-driven type testing tools now there's an art to those as

[02:29](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=149s)

well right because there's a modeling art and automating in general is not an easy thing to do so we'll hopefully cover some of those questions come as we come through but that the main point is always wise kind of stress with my work is as much as possible taking responsibility for not just what you do but how you do it and how you see it and how you think about it because those are absolutely essential right you will I guarantee you will make mistakes when

[03:05](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=185s)

you're testing when you're automating when you're doing any of this that will happen because that is how we learn and one of the issues that we face is very often we jump to strategic automating and far too quickly when we really want to be as tactical as possible as early as possible in order to learn ok so I'm going to start looking through some of these questions if you have any questions that were not originally posted in the original post then do add them in the comments right because I've copied out the questions that were in the previous post because I don't want to have too much stuff running to mess with a live feed and if the live feed

[03:40](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=220s)

goes wrong there's gonna be multiple recordings so we'll get one at least uploaded well

## Question 01

**Question topic (AI paraphrase):** How should a team choose automation tools and abstractions?

[Watch from 03:46](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=226s)

### Question (automatic captions)

[03:46](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=226s)

so one of the first questions I saw was what pointers do you consider when choosing an automating tool or building an automation framework most organizations simply follow the trend blindly choosing selenium and hybrid frameworks or is your opinion so

### Answer (automatic captions)

[04:02](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=242s)

I have multiple opinions on this but one of the things that I I see and I generally stress is don't build automation frameworks um there's a difference between a framework and a library and we want to get to the point where and we're building libraries rather than frameworks the way that I make the distinction is the a framework controls oh I do a library is something that I can use and plug into however I use the tools that I'm working with so selenium-webdriver is a library I can plug it in I can use it and it doesn't

[04:39](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=279s)

really matter how I write my code wet bar if it doesn't care doesn't matter what language I'm writing in there's multiple implementations in different libraries j-unit is a framework in order for a unit run I have to annotate my test code with that test and then j-unit picks out and decides what it's going to run I have to conform to the g-unit standards in order to have my code working so when people talk about frameworks I get a little bit nervous that they're writing something that will control what I do and there's so many sites that I've been on I've given me a

[05:15](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=315s)

framework that is there to help me that I've had to bypass in order to actually do the work I'm supposed to do all right so I had to learn reflection in order to actually bypass the frameworks and get work done so and also the word hybrid I looked up hybrid testing on Wikipedia before I started this and it's got one of the worst definitions I've ever seen online is it's quite confusing it's not a term that I use simply because I know that people think in terms of keywords

[05:51](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=351s)

even testing data-driven testing model driven testing whatever other type of testing when were automating what we're essentially doing is taking paths through an application and automating the execution of those paths require data so in a sense everything is data-driven sometimes the data is encoded in the path because in order to go through a particular path you need invariant data I will only go down in this particular path if the end customer is male I go down in this path if the customer is female so that's an

[06:28](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=388s)

invariant on that path a data invariant we never change that value if we do we go down a different path and we're doing essentially a different execution so with any automated execution we have the concepts of easy model and the path is encoded in there we may not have identified a general model in advance it is data driven because the data controls the path then what we have is variant data over the top when people are doing data-driven testing what makes me a bit nervous is that everything is controlled by the data so I would have a data line

[07:05](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=425s)

that has the gender but the gender controls a path so then we've got data that is actually controlling our path and then we get confused because we're putting in too much data I think one of the keys with data-driven testing is to minimize as much data as possible so we're only seeing the important data in the test the variant data that is making a difference because there's invariant data encoded in the path keyword-driven testing is just on an abstraction layer for making our code readable and so we have verbs and nouns that make things

[07:41](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=461s)

readable and hybrid essentially means what we're taking bits of all of this and it almost sounds like it's well it's not as good as any of the others because it's hybrid it's a it's not clean and whereas in fact most of the automated execution that we do will be hybrid right because if we're using selenium or webdriver that on its own will not be good enough to make maintainable code because we need an abstraction there as our abstraction they're going to be keyword driven is it going to be model based is a domain-specific language that we put on top are we going to poo mmm data through this is it going to be

[08:18](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=498s)

variant data it's always completely hybrid right because the art is in building abstraction layers that help us with our work and that can be hard right the reason that automating is hard and is different than like building an application is that application developers build different abstraction layers write testers build our test automation requires abstraction layers that make it easier to read whereas with application code that's less important you don't build an abstraction there to make it easy to

[08:53](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=533s)

read because you're writing something that is very specific whereas rewriting something that's very generic so it needs to be easier to read that's why keyword-driven might help but then keyword-driven imposes a whole bunch of extra tools that we need on top so everything is hybrid what we really want are and based tools and libraries that are effective for the technology that we're using right so we use selenium if we're testing web typically or rest-assured for API and we combine multiple tools and libraries to help us test at different layers so very often

[09:29](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=569s)

people are picking selenium because it is the most popular it is robust and it is not a standard which makes a default choice commercial tools that automate web applications under the covers use selenium webdriver so it's a fairly good choice but what we do when we're automating is we look at our skill sets our budget because when people are considering what we've got to do we have to look at the budget and the budget isn't just time as they cost to build the tool is can we afford staff with the experience to do this sometimes a

[10:06](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=606s)

commercial tool can be cheaper than an open-source tool because we might be able to train up people that don't have programming experience to use a commercial tool we may find it hard to get people employ them who have experience in that commercial tool in the first place we may have to recruit that potentially very expensive people to use an open-source code base tool if we don't have that inner environment so budget is a fairly big and constraint and and how do we decide on budget well what we do

[10:41](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=641s)

is we look at what is it worth to us if the thing that we automate is all made so thanks for that comments I am and I'm glad that you found the book useful good to see I'm gonna try and respond to comments as well and if you leave questions in there we'll answer those em when we're trying to decide how we're gonna automate what tools we're going to use to the poor experience do we currently have right because they often we haven't got the experience required to do strategic automating I make it a distinction between tactical and strategic automating and I'll try and

[11:17](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=677s)

cover that over the course of this because if we approach things tactically it's can I do something fast and now that gets a job done that helps me and it might be just me doing it strategic is what is best for this project what is best for our company what are we going to standardize on rule out or are we going to maintain longer term and clearly it requires much more experience to build something strategic that is going to last longer term than it is to knock some knock up some code that we're going to use tactically and a combination of both of

[11:53](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=713s)

those is useful for flocks that flexibility do we have in terms of choosing what tools we're going to use and because things may be imposed on us we might not have a choice as someone may have written a framework that we have to use because someone pitched that as part of the job so we have to use this keyword driven framework because we believe that gave us a edge in the pitch process for the work we also have to consider risks not just risks in the application that we're testing but in the tool that we are using right because every tool has some risks can we continue to afford paying for this

[12:29](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=749s)

commercial tool or are we tied into it is the tool cheap enough that it works fine do we have the skill set for the open source can we maintain it can we fix bugs if they happen there are going to be risks in the tool themselves we also have to consider how easy is it to adopt the tool how easy is it to evaluate how effective does it work with the technology does the tool try and take over everything or have we got specific libraries for specific technologies there's a lot of things that we have to work out we also have to figure out what is it that we actually want to try and achieve with the automated execution and a lot of

[13:06](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=786s)

people are not in the position to answer these questions because they don't have the experience it took me a long time to be able to answer these questions effectively because learning as we went along and when you're in that situation and generally you'll make the same mistakes as everyone else like will automate curly will write bad code we won't create any abstractions in place and people will be untrained they'll be an experience like there's all bunch of things and under those circumstances people very often want to cut costs but the reality is the easiest way to succeed and succeed

[13:42](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=822s)

quickly is to hire someone who has already done that and making sure even if it's just for a short period of time to help you get over the hurdle because the hard part is finding someone also without bias because when we try and look at and who can help us there'll be consultancy companies out there they'll be biased in terms of continuing to sell as consultancy or the person that wants to do a job may be biased in terms of the programming language that they know how to use rather than other programming languages and that might lead you into a different direction ideally we want the choice of things to

[14:17](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=857s)

be a team choice right so not just a test team choice but working with the programmers so that they can contribute in help out now we have a difficulty sometimes that and testing can be outsourced to somewhere else so very often the test automation is done by a completely different team than the development team under those circumstances it's hard to learn from each other's experience cross-pollinate with with knowledge but if you were working on the same team as programmers involve them in that decision because it really helps because they have the programming experience they can look at

[14:54](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=894s)

how easy is it to deploy how easier to develop in but you don't rely on them to have the modeling experience to give you the information that you need in order to model automated execution for testing purposes

## Question 02

**Question topic (AI paraphrase):** How can we automate testing for IoT devices and wearables?

[Watch from 15:10](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=910s)

### Question (automatic captions)

[15:10](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=910s)

ok other question the how best can we go by automating any IOT device suppose you want to perform automated testing for a fit band or Apple watch

### Answer (automatic captions)

[15:19](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=919s)

this is interesting in the sense that it shouldn't really matter what we're trying to test right because ideally we want to unit has the cord and we want those unit tests to be running off the device after that point it becomes a series of integration risks that we're addressing and there's the same with any application we unit test as much as possible in isolation then it's integrating either the the different units or the different modules or putting on an operating system how does it interact with the device libraries how does it interact with different

[15:55](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=955s)

versions of the devices how do we upgrade between versions we also have to look at how much can we get away with and by automating at just normal technology tiers so we don't want our first choice to be automating at the fit band or Apple watch level how much can we get away by automating on the actual device right could we build our self testing application version that when we installed on the device it runs does as much as I can and reports back writes a log or communicates over HTTP could we do that do we have to do it as automated

[16:32](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=992s)

through the GUI because then we're testing it at one layer we want to go as many layers down as possible how much can we automate with just plain HTTP messaging because then the tool set can be just a library that makes HTTP requests because and outside the normal technology tiers is we have to then think well what tool actually works on this device what risks are real tempting to find the presence of or detect or experience do we have automating this device the more we narrow it down to a device focus the more specific it gets

[17:08](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=1028s)

and the harder actually guess and we're the more too reliant so they can best way to automate it is to architect the application and build it so that it has as few device specific risks as possible and that is not how people build these applications unfortunately but if we can do that is very easy to test in continuous integration and then we just have a tiny set of risks to actually deal with so in firstly a lot of these questions are beyond like a test team responsibility very

[17:48](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=1068s)

often we find ourselves in a situation where we're given something and talk to Automator when reality is we should be given something talk to test it and then we look at what what testing has been done previously then we look at watch the risks and then we test it and then within our testing sphere we look at what is appropriate for us to automate but first thing that it's not often how the world works and we're just told here's a thing automate it and we have to automate it from the outside in and that is not the most appropriate way to do it which is why working with teams is very important working closely with the programming teams to get the whole architecture and build process working

## Question 03

**Question topic (AI paraphrase):** What can we learn from automation failures?

[Watch from 18:25](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=1105s)

### Question (automatic captions)

[18:25](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=1105s)

okay EDA asks everyone claims to automate everyone claims to get value out of automation and very few shear failure stories has anyone written a book on automation failures and mistakes so

### Answer (automatic captions)

[18:39](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=1119s)

I think there are a few I haven't read many of them the only ones I've read are a doc Graham and Mark few stirs books and they are relatively old now the problem is a lot of the failure stories are you know we try to do all this automated execution work and we'd actually know what we were doing right we didn't know how to do it we didn't we've never done this before but here are the lessons we learned but then when you gain experience and you look at the lessons or you look at the problems and you go you know that's not actually good advice or that's too

[19:15](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=1155s)

generic to actually be helpful because the hard part is that we really need experience in order to evaluate and mistakes and the lessons and the recommendations as the same with best practices and design principles now one of the early questions is people just jump to selenium-webdriver because they don't have the experience to know how to evaluate different tools so you pick the tools that people are using that seem appropriate because we just don't have anyone that knows how to do it and if we don't know how to do the evaluation then we have to justify our

[19:52](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=1192s)

choices in terms of we know keyword-driven testing as better than X because one can do it and the tools are free and but the problem is we don't necessarily have the experience to evaluate when we're doing keyword-driven testing purely and how to spot the mistakes and keyword-driven testing and how to bypass those so the best thing we can do is constantly explore options and we don't necessarily need to commit to an option araly right very often we were too quick to jump to strategic long-term

[20:29](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=1229s)

automating very often if we explore things tactically and then we can experiment and we can project forward whether we think this will scale whether we have the experience to build this long-term and whether this will experience causes issues going forward right a lot of tactical small experiments is much easier and better to handle than committing long-term to a big strategic item

## Question 04

**Question topic (AI paraphrase):** Which daily testing activities should we automate?

[Watch from 21:01](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=1261s)

### Question (automatic captions)

[21:01](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=1261s)

okay what areas do you suggest after me in a testers day-to-day activities so

### Answer (automatic captions)

[21:07](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=1267s)

this is this also comes down to the hard part with this is you want to see you want to be able to tell people these are the things we should all mean but in order to automate we have to go with what skill sets do we have and what things are we doing that we believe could be or made what things do we are we doing that we even know we could on me right because if you don't have a lot of experience you don't know what the possibilities are and and also you've got to consider well what do we actually want to learn right because we have to keep an eye on our and career prospects the technologies make sure that we're moving forward and how can I apply the learning

[21:44](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=1304s)

into my work all of these things together but when it comes to what should we often me start tactically right what can we automate quickly what can we offer to me easily what can I actually do for myself rather than have someone else automate for me because strategically it's well what can what will help the team what will help the project one of the mistakes I think the industry has done with the can a software development engineer in test rule is have someone whose job is to automate on behalf of someone else or have someone whose job it is to create

[22:21](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=1341s)

tools for other people right that gives someone a fun job but then they have to continue to justify that job by adding new features and building frameworks and completely expanding it whereas people over here need to do work and given them the skills to do the work and the time and to automate it and and help them choose tools is a much better approach than having someone give people things so the easiest way for me answer the question of what areas do we suggest or me as when I was starting to automate and some of the first things I did was am writing test scripts so we had we're

[22:57](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=1377s)

doing manual testing which is all scripted and so I oughta mated the writing of the manual test scripts by creating a diagrammatic model feeding it into my tool and my tool wrote how test scripts that we could then follow em crocheting cross references between things and the to a lot of my initial automating was automating the tools you reason to control the testing because they had such bad and graphical user interfaces raising defects from text files so I didn't have to spend the time going through all the hoops in the tool I just wrote a text file it uploaded it

[23:32](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=1412s)

in the tool and put all the fields in and creating test data was a very useful thing to do setting up the environments in loading the test data in after having done testing collating results of the EM system and automatically am uploading it into the application so that they were there in the the test execution logs parsing log files looking for errors and as I got more experienced and better at programming and I wrote tools to take the XSLT transformation specs that we were using and check that they actually

[24:09](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=1449s)

worked by using sample data but all the time I was constrained by the time that I had the budget which was usually nothing the tools that I had available and very often we had locked down environments so we had no too it's a lot of it was how can I learn how to use Visual Basic for applications in Excel to automate these things the skill sets that I had because I knew how to program but I didn't necessarily how to do certain things I had to learn and what I could get away with in the process right because we've all got and management edicts that we have to do so

[24:45](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=1485s)

I think it's start tactical start small look for kinda 80/20 like what big wins can we get for like a small amount of work to achieve the maximum impact and a mistake that people make is going strategic too big so when we're looking at what can we automate what we could build a framework that will help us do this and then we can all contribute that strategic before we've actually learned how to automate tactically and small so do tactical quick wins just try and improve your daily life

## Question 05

**Question topic (AI paraphrase):** How can we create useful training videos?

[Watch from 25:21](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=1521s)

### Question (automatic captions)

[25:21](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=1521s)

question on tools and tips for creating brilliant videos like the ones in the courses and the i-pro and so

### Answer (automatic captions)

[25:29](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=1529s)

things like this where I'm doing green screen so I'll I have a list of technologies I'll try and paste them in here file paste them in as a comment here and so I use Camtasia which is the screen capture tool a webcam and an iRig USB mic a pop-up green screen this is a pop-up this little thing on the floor I pop-up I could take that down but all the magic would go away and two LED lights and on boom poles but I

[26:06](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=1566s)

didn't start with any of this right and I started with like clumsy horrible green screens that were very cheap right to start with no green screens and just gradually built up and the inbuilt webcams in the laptop that weren't very good the inbuilt mic in the laptop that again is a very good and start with em free software and the most important thing is to have as good a microphone as you can afford and just create content I'm streaming this through free software called OBS OBS can do green screens very

[26:41](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=1601s)

well even with just a white background and this can record screens it can record video can livestream at Facebook so OBS is very good there's lots and lots of free tools the hardest part is editing finding additional video editor so the reason I use Camtasia is that everything is in one bit of software but it is um is expensive and but I had to build up the funds to do that and I knew at that point that was going to do a lot of videos so it was a lot easier to justify but there are a lot of free tools so just um its start don't even worry about the quality so long as the

[27:18](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=1638s)

audio is good enough people will queue up with pretty much anything and

## Question 06

**Question topic (AI paraphrase):** Which processes should every testing team practise?

[Watch from 27:22](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=1642s)

### Question (automatic captions)

[27:22](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=1642s)

Allen can you mention some important mandated QE processes that every testing team should follow so

### Answer (automatic captions)

[27:30](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=1650s)

I think the most important thing is to have reviews right so when you do some work someone else reviews it and says what did you think about this did you consider this we could improve this even and what you've written you could write it this way differently and could reuse this tool what did you learn can you go and explain what you learned to somewhere else because the most important thing we have to do is continue to improve and the only way that we can continue improve is through feedback and a lot of time we rely on external feedback and

[28:06](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=1686s)

other people tell us what to do but we have to get in the habit of as individuals and as teams and as companies taking responsibility for our own growth and so the easiest way to do that is reviews and you can do that yourself so if you just periodically look back on the work that you have done and go if I was given advice to someone else how could they improve this and you give that kind of advice to yourself so I think reviews and retrospectives debriefs that feedback process is the most important thing because too often and people are left isolated people are

[28:44](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=1724s)

they're told to do one thing they're not given any support and the management don't has to look after the team or help them improve their continually externally focused that's what makes things fall apart and that's when we leave organizations and go and try and find other teams so you keep learning and because everything that you need in your process will eventually appear there if you keep experimenting if you drop things that are not adding value and drop things that are waste activities you stop writing the reports that people don't read or at least cut down the size so you're still creating the report do you mean the contract and

[29:20](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=1760s)

if no one's reading it it's not adding value yeah so AJ is obs that I use for streaming this and one of the interesting things in terms of feedback is that what we don't often do is use people's skill sets effectively so everyone wants to come over specialized too fast particularly when it comes to automating people want to over specialize on automating what we really want to do is get in the habit of using that feedback process to identify

[29:56](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=1796s)

what people are really good at help them do that and what people are not as good at help them get better but don't just make the people who are good at something be the only people that do that because then they over specialize then it becomes a blocker if they leave or if they're if they're not there for a day so feedback to help us work out what we're all good at

## Question 07

**Question topic (AI paraphrase):** Where did the Evil Tester name come from?

[Watch from 30:18](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=1818s)

### Question (automatic captions)

[30:18](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=1818s)

so what does it mean by evil tester how did I get the tag Evo tester and is there any special story behind it and so

### Answer (automatic captions)

[30:29](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=1829s)

there's the reason I like Evo tester is that there's multiple things I could see there's multiple stories I could bring out for this I could make myself look at different ways but the simple thing is a lot of people get hung up on words and one of the things that I've tried to do for a long time is not have as much of an emotional reaction to words right so when people say we're doing scripted testing you don't go oh that's a bad thing because because there's a word right we're reacting to words do is try and understand what that means

[31:05](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=1865s)

what people are actually doing and and a lot of time people go evil bad word ah super bad whereas why I hear is alternative right because projects need balance and if all projects ever here aren't the good stuff the confirmatory and feedback that all the requirements are met that this is good this is working then they'll miss all the warning signs and they won't improve and people don't speak up they don't consider alternatives I mean it does stand back to when I started because remember and I've got gray hairs I've

[31:41](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=1901s)

been doing this for a while and it was very much waterfall projects that was very much testing was not a core part of the project it was on you did afterwards it was an extra some people didn't see the need for or if they did it was a necessary evil and we were very often stuck in the basement or Putin the windowless room at the back or twenty people stuck on a tiny series of desks because it was less important so you just that was testing so I mean I embraced that notion that we were the can unwanted thing and acted as a mirror

[32:16](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=1936s)

because I had nothing to lose I could hold up a mirror to the project and be honest and point out the impact of decisions and the risks of the path that we were taking and again it's in here in the vision of I haven't you cannot think worst of me I have nothing to lose at this point I will embrace this and so for me is kind of like it means a balance it means doing things that other people won't do thinking about things in the way that people won't think about them seeing things that people won't see having the courage to do that has an attitude that helps me test a couple of

[32:55](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=1975s)

em so there's a really good book called provocative therapy by Frank virally let me do that in the comments so people can see it and this is a psychotherapy approach where as kind of devil's advocate therapy people are being told the things that they say internally in the head that they don't want to admit to but it's the therapist has to conduct that with humor right whenever you give them people bad news in projects you have to have some way of seeing it so that they don't punch you in the face you have to have some way of

[33:30](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=2010s)

seeing it with with humor or so that they know you're doing it for their best interests um and I think the image is the only image in that book is a court jester because the court jester was the only person that was allowed to see anything against the king everyone else had to say yes my liege that is a good idea let's do those things the court jester was the person who is allowed to make a joke sing a funny song that pointed out the possible bad things the alternatives the honest view like the shaman explores the knievel magical

[34:06](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=2046s)

realms and protects their people from evil spirits and provides access to healing as that alternative path that other people won't go down they're prepared to go down and but they need to exist alongside this good path of law and order that everyone else is on because if you don't have that you don't have a balance and that's war the whole evil tester thing is for and the little iconography and came about and because I was getting so annoyed on projects I needed some way of venting my frustration so I just drew little

[34:42](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=2082s)

cartoons of things that were going bad and then that kind of stuck and it took me a couple of years to buy the domain name and she couldn't believe no one had bought this but I think people are they don't like that and that word evil so we have to change our heads so that we don't have such an emotional attachment towards

## Question 08

**Question topic (AI paraphrase):** Can scriptless automation help a testing career?

[Watch from 35:03](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=2103s)

### Question (automatic captions)

[35:03](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=2103s)

question how much script lists automation tools will help in career growth so

### Answer (automatic captions)

[35:08](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=2108s)

this is interesting right because script lists automation is an important concept and for the longest time I didn't like the notion because I liked programming I liked people programming and building up the skill sets to do that but over time I became aware to me that and being able to code and code well for automated execution is hard right it's a very hard thing to do and but script las' opens that up to people who don't necessarily like programming won't read all the

[35:45](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=2145s)

programming books won't go back and read all the design books because it then the reason it's hard right is we have to learn testing we have to learn all the technology that we're testing to identify risks then if we save right we also need to code to do our main execution and it's not just a code it's really well designed code shift and all the design pattern just to know all the architectural risks you have to know how to use the IDE s you have to know how to do unit testing there's a lot of skills being built in there and that's what really makes it hard so script lists tools can help massively on that problem

[36:24](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=2184s)

is that there are so many script lists - there's no standard script list tool so when you're at work and using script list tools if you think go for another job and say I've used script list two legs the this company you're going for might not be using script there's two legs so it's not necessarily the tool itself that helps your career growth it's your ability to look at the transferable skills from that tool because these transferable skills of what we have to abstract into reusable domain-specific languages if you're

[37:01](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=2221s)

using script lists it might be keyword-driven you have to create keywords that map on your domain that's a modeling process and that is a skill being able to write the right keywords or the right commands of the right level to make your automated execution maintainable and to survive long term that's a skill it's a modeling skill and being able to identify the aim of automating who are you trying to automate and are you automating the correct things that are appropriate for the project at this point in time that's a transferable skill modeling the system so that you can cover it effectively

[37:38](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=2258s)

that's a transferable skill so scriptlets automation to his help when you identify the transferable skills are in there and have the ability to communicate to that two people right and also identify the technical knowledge that you haven't build up because even if you're using script --less tools you're probably still having to M identify locator strategies through XPath or CSS you're still having to understand HTTP and headers in order to inject them into the system all those technology learnings they are

[38:13](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=2293s)

transferable and that's the benefit and the other benefit is it might actually help you and do things that you weren't able to do particular if you're working on a tactical level like things like have robot framework completely free you don't need anyone's permission you bring it in you learn some script list testing through keywords you learn all those things and it might tactically make a difference to your work if you can automate things that are important to you um so

## Question 09

**Question topic (AI paraphrase):** What does Alan think of Katalon Studio?

[Watch from 38:44](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=2324s)

### Question (automatic captions)

[38:44](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=2324s)

Mahesh is asking how do I find Catalan studio

### Answer (automatic captions)

[38:47](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=2327s)

I haven't used it and Catalan studio my impression of it is it looks like a big thing that has pulled in a lot of open source products and and potentially has some layers of abstraction on top but because I haven't used it I can't really comment on it and see the interesting thing is I because I can code I tend to bypass a lot of those tools when I'm doing work and I often only get to see these tools if the company that makes them and invites me to have a look at them or I'm working

[39:23](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=2363s)

with a client that is using them and I've never worked with a client that's using cattle launch to you so I haven't spent the time and looking into it but all these two horse interesting is pretty much every tool works at pretty much every tool and can fit someone's needs and if you can learn it so it's about is there a learning path that works for you into that tool because make no mistake there is no such thing as the best tool or one tool that is better than other two they they have risks they have issues we have to have the ability as individuals

[39:58](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=2398s)

when we choose them to bypass that and absorb it or as teams to do the same thing

## Question 10

**Question topic (AI paraphrase):** How can testers obtain better environment support?

[Watch from 40:06](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=2406s)

### Question (automatic captions)

[40:06](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=2406s)

okay basic question but getting environment support during testing is still a challenge what should be a QA teams approach

### Answer (automatic captions)

[40:16](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=2416s)

you know getting support from anyone in work situations can be hard there might have times that we've had to try and get support from people and mean told no no no right they enforce the thing is this is also why and I had to build up an attitude of being prepared to keep asking being prepared to keep nagging at different communication strategies and the other thing that I find interesting is very often it was left to the people on the ground to get this done so you your your

[40:54](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=2454s)

tests are you working on a project and you try and do your testing you don't have access the environments to do certain things you raise that to your manager and they don't cruciate so you have to keep pushing it and that's obviously that's what's interesting is we take that as a bad thing what we're actually learning at that point our management skills we're learning negotiation tactics we're learning how we can sell things to people and very often times as we give up and we shouldn't give up what we should do is keep pushing and develop those skills because that's what strengthens us to go forward not what we want to hear but that's true

[41:29](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=2489s)

mmm so I think the key is the way that I've approached this is I have to know what I want if I want to access the environment I don't want access to the environment just because I want access I want access the environment because I specifically want to do these things and I know that if I can specifically do these things then I can achieve this and I'm able to communicate what this is and I know that if I don't get access to it not only can I not do this I these things over here will happen this is the impact not being able to do it it has to be more than I need access the database

[42:06](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=2526s)

where I can run SQL queries it's I need access database so I can run SQL queries so that I can test the results of this testing otherwise I can't do it and bugs might slip through and I have to ask that team over there to do the queries for me and that takes their time away so I'm spending time asking them they're spending time is doing it whereas if we've got access we could cut that down into a couple of seconds after the test runs right so we have to also be able to explain it in a way that people care so some people that you're going to speak to are gonna care about the their time and you're saying I am

[42:41](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=2561s)

spending your time on this I don't want to spend my time and management care in terms of project time impact this it currently takes me 20 minutes it could take me through ii-if you can communicate it in terms that people understand the other thing is making people feel the pain right of you not getting the support so make lots of support requests to get the things that you want done and don't compensate for it it's very tempting because we all want to do good jobs to do overtime to

[43:18](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=2598s)

compensate for the length of time it takes us because we've got all these buyers don't do that don't absorb the pain make other few people feel the pain by not doing the overtime because of that same right we'll have to do this tomorrow now because we don't have time to do that today and if we don't I mean as a way of forcing empathy by making other people feel the pain of your situation you've explained it to them but you have to make them feel the pain we have to communicate it in a way that they care about the other thing a lesson learned from study and evil is

[43:54](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=2634s)

temptation right so what we do is we show people the alternative of how good it could be and how easy but then bring them back and say but this is what happens right so we have to ensure them that alternative and make it very visceral so that they can feel it

## Question 11

**Question topic (AI paraphrase):** How can testers decide whether to specialise in automation?

[Watch from 44:14](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=2654s)

### Question (automatic captions)

[44:14](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=2654s)

alright where's the next question okay how can testers really new or figure out if they really belong to automation before they pick up is a full-time thing just because there's a buzz around I see lots of people struggling to take the right call here

### Answer (automatic captions)

[44:33](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=2673s)

so the interesting thing for me is I do a lot of em automating right by also do a lot of testing and I do security testing and I go really deep technically when I test so I don't really specialize I know that and what I find interesting is when people speak to me and some of them will think of me as that guy that does an exploratory testing or that guy that does technical testing or that person that does automating and whereas I do all of that

[45:08](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=2708s)

and I do management and I've written applications write this across the board and so in order to do that I don't specialize in any specific things why specialize in is a software development so I have to go higher than the Cardinal set of rules that are on offer to me so I think what we have to do is to learn how to test and learn how to test as well as we can right because people often think of tests or meeting or automating in support of testing as a separate thing and it isn't it's

[45:45](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=2745s)

augmenting our test strategy test automation is as part of our test strategy we want to army those things if you don't have a good test strategy this able to be understood then the automating that you do will be wrong so we need to know how to test and test well learn how to automate it to support your testing and that can be tactical learn bits and pieces if people want to gravitate to more coding over time then they need to concentrate on programming so before committing to automation they need to know her program

[46:22](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=2782s)

and program well and you should be able to and bring that into your normal testing work as you're learning it right when I was improving my programming I was writing tests their generation routines I was writing little routines to use api's to do work the more that I learned here the more that I could do here so the way that you will know if you belong is as you are learning how to do it can you feed it into your normal test work if the answer is no then what you're probably doing is not automating it's not automating support testing it's

[46:57](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=2817s)

probably just programming and and then it's not necessarily you should be doing into automation you should probably go to programming and so automating is supporting the testing process because bear in mind there are other things that we could learn as testers we don't just have to learn how or to me we could learn security testing we could learn performance and the interesting thing is as you're learning something if you can fit it in to your testing and if it's something that you enjoy learning about then it's probably a good path if it's

[47:34](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=2854s)

not something so I just hit them like if it's not something that you enjoy learning it's probably not good path if it's not something when you want to learn how or me yeah you have to be prepared to read lots and lots of books on programming lots and lots of books on design and other things you could do is you could learn architecture you could learn design they will help you with your testing security will help you with your testing because you'll see other risks this is an management skills will help you with your testing because you can communicate better web development if you're working on web applications will help you understand the risks of

[48:10](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=2890s)

what you're doing programming accessibility marketing SEO and diagramming studies get anything right if you can bring it back into your testing world then it's a good thing to pursue if as you pursue it you are interested and want to go beyond the things that are spoon-fed you then it's a useful thing to bring in but if you if you if you start doing automating but don't want to keep learning the topic then it's probably not a good path because you won't be

[48:45](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=2925s)

able to pursue something well unless you enjoy it and if you don't enjoy doing or reading about it you will never get good at it and there's no point starting down something that you are going to impose a ceiling on right find the right path for you as an individual don't over specialize too quickly because you see money in it because the money changes and at the moment automating might be well-paid compared to something else but something will come up or the dynamics in the environment will change and we

[49:22](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=2962s)

will outsource the automating to a country that is cheaper or other people that do it well or a tool that will do it for us or we'll bring in this AI stuff because we think it will be better right things change so focus on the paths that you enjoy they give you the skillsets that you can apply because then that will support you and take it earlier now I'm never gonna tell people not to learn how to code right because I love coding coding was my first job write applications I write law school I automate lots of things and I often meet

[49:59](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=2999s)

lots of my marketing and I've just written a tool that automatically takes blog posts and creates videos right this is this is why do I don't specialize because I see all of these skills right testing design architecture programming management as part of being a software developer and that's really what I aim for and that's why I encourage people to do testing is a special ISM within it if we don't have all these other skills we can't fully contribute to the projects as well

## Question 12

**Question topic (AI paraphrase):** How should we assess progress in automation?

[Watch from 50:29](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=3029s)

### Question (automatic captions)

[50:29](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=3029s)

how do you suggest to measure automation progress as simply measuring the same based on the number of cases because Counting test cases doesn't guarantee that they will actually add value so how do we measure progress with automation so

### Answer (automatic captions)

[50:47](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=3047s)

the interesting thing is I don't measure a lot of stuff and what I might try and do is if I'm in a management position if we want to change something I'll figure out how we can measure it so that we know that we've changed it for the better but as soon as we've changed it for the better that measurement goes away because all I'm really trying to do is decide how we are improving I rarely have to report on numbers now this partly because I've

[51:23](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=3083s)

often work in agile projects and the focus is on the the Sprint what we're building in the sprint and it's obvious if we're not building it effectively and but people lose sight of the amount of things that they don't do all the things that they didn't ought to me is they were going through that they were supposed to in order to have the story done and that's ultimately a problem around coverage so if you want numbers it never comes down to individual things because remember earlier on that M I was talking about we've got to have data

[51:59](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=3119s)

driven testing model-based driven testing keyword-driven testing and really these are abstractions when we automate we are automating the execution of paths through a system that path has data so if we count test scripts what we might be doing is counting m paths through a system that are covered by different data if it's data-driven testing what is it we're actually counting at that point is it the variant data or the invariant data and then the numbers get wrong what we have to figure

[52:34](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=3154s)

out is are we covering the right things and when we're assessing coverage is the the data scope the paths the conditions the requirements they're probably more important to figure out than like numbers of test cases or scripts so most of the time I don't actually measure what we do is we review in terms of coverage are we doing too much in one area and does the data go through this path actually make a diff right because if it's actually the same

[53:09](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=3189s)

path with different data but the data is part of an equivalence partition they're the same thing it didn't make any difference so what we might want to do is drop some of them and then randomize some of the data within the equivalence partition and so as a coverage question and and it's hard to really answer with a measurement if you don't have a model why have done in the past is I remember working on a project and we were building an API and I wasn't convinced that we had done enough so I built a model of the API and in terms of the verbs in terms of the endpoints in terms

[53:46](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=3226s)

of the parameters and all the automated execution we did I put it through a proxy and I captured the hard file then I analyzed the har file against my model and I found gaps I find that there were certain end points that we had in the hid I find that there were certain verbs on certain end points that we had never used so because I was comparing it from a model I was able to assess the coverage and measure that way and it didn't really matter the number of tests we were putting through because what was important was the coverage

## Question 13

**Question topic (AI paraphrase):** Does code coverage help with web automation?

[Watch from 54:18](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=3258s)

### Question (automatic captions)

[54:18](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=3258s)

it's a follow-up question do you think code coverage for a web automation is a good idea if yes what tools do you suggest for doing that so

### Answer (automatic captions)

[54:29](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=3269s)

I think code coverage is really important but it doesn't really tell you anything except we have exercised this code I think it's very important when you are when I'm coding and I'm actually building the system and I'm doing test-driven development and I use whatever code coverage tool comes with the ID and and I can see what code I haven't exercised in my TDD and I can make decisions about do I want to do that or not and it's purely a code level

[55:04](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=3304s)

and and it's pretty much whatever tool works for that language that is easy to fit into the build process that you've got or preferably whatever tool the programmers are using because then they can support you tool is almost less important because you just won't ever run this wire is easy and when you start moving up into a technology level like web applications it's less of a code coverage issue and again a model coverage issue in terms of M endpoints one of the things that can be hard with code coverage for Web Apps

[55:39](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=3339s)

is the JavaScript this in the web app if that's not covered by unit tests it's very hard to measure because really you only get good code coverage from the unit test you don't tend to get code coverage when you're using the application in order to do that you have to instrument the code and then you have to the ability to report out somewhere else in theory you could do that but I haven't done that I rely on code coverage during automated unit testing in order to cover this

## Question 14

**Question topic (AI paraphrase):** Should developer and SDET interviews use the same coding tests?

[Watch from 56:10](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=3370s)

### Question (automatic captions)

[56:13](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=3373s)

so I thought this was a an interesting freshman fact I thought all the questions that we got here were interesting and I had to think and it was really good but this is a kind of pet peeve of mine so the question was interview questions in terms of complexity or solutions in terms of approach and algorithms for coding for software development engineers and tests and software development engineers can they be the same do we have the same interview process for both those groups and the answer is

### Answer (automatic captions)

[56:46](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=3406s)

recruitment is broken the way that we recruit developers and software engineers and tests and testers is garbage any algorithm based interviews and tests are flawed they're poor and unless your company is in the business of selling libraries that implement algorithms we shouldn't use that as part of our interview process because everyone looks up on Google or finds in a book what we want to do is audition people and they're not the same right a

[57:21](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=3441s)

software developer engineering test does not do the same thing as a software development engineer they build different things one of them is building the application if you build the application the same way that you build test code your application will color be too slow there will be too many layers of indirection um if you build your automate execution code the same way you build your application you won't have enough layers of indirection it'll probably be too depth I mean you see this from the what made the execution code that keep you in the microphone see this from the automated execution code the software developers right let's copy

[57:57](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=3477s)

and paste there's new abstractions because they used to write unit tests that they don't have to maintain as much whereas any external facing test has to be maintained and has to have abstraction layers because we change floors and we change the application so they are different we should use different tests but I try and recruit by an audition process rather than a question process so I'll sit down with someone and if I'm recruiting someone who I know that a lot of their rule has to be automating I'll sit down with them

[58:33](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=3513s)

and say here is some code that we use to automate our application tell me what's good about it tell me what's bad tell me what you would change what would you do differently okay let's run this code and let's change it to cover this how will we do that what will we expand and and then as they are doing it and I'll get to see what are the limits and their knowledge are they fluid with this right is it something that they obviously do a lot or are they a bit rusty I can ask them questions about what their thought process was why did they choose to do it that way how have they done this in the

[59:09](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=3549s)

past you seem a bit rusty have you not done this for a while do you still remember what were you last using and it's a very custom process for that individual to get as much information back as possible and it works for them because they get to see how you do stuff right because an interview process is a two-way thing right you're interviewing them see if they are appropriate but they're interviewing them interviewing you to see if they want to work for you are you creating the right kind of code they want to work with are you building it in the way that they want that audition process is really really

[59:44](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=3584s)

important so simulating the environment that they're going to work in is essential and consequently software development seniors and test work in a very different way in different environment the software development engineers so you need a different process for doing that

## Question 15

**Question topic (AI paraphrase):** With no automation, which tests should we automate first?

[Watch from 59:59](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=3599s)

### Question (automatic captions)

[59:59](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=3599s)

I think this is the last question that came through which is good because we're almost out of time in terms of an hour and if anyone wants to add more questions in the comments then we can keep going otherwise we'll stop fairly soon so the question was an application with zero automation what type of tests do we build first smoke tests and to end tests or regression tests and the answer is

### Answer (automatic captions)

[60:26](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=3626s)

if I was in that situation I wouldn't be using those concepts now the interesting thing for me and I just want to stress this is and when I'm saying I wouldn't use these concepts or I wouldn't explain it in that way or I don't use those words it doesn't mean you're thinking about this wrong your questions wrong it means I think about this from a different perspective I have to answer this question from a different perspective because smoke tests end-to-end test regression tests are kind of variants of a theme a smoke test as essentially a song could be a subset

[61:04](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=3664s)

of the regression test and to end tests are probably part of the concept of regression tests so again there are subsets of what we've got is we have to think instead in terms of capabilities aims and constraints all right so capabilities before we do any automated execution we have to build the capability for doing the automated execution we have to find the right library we have to find the right tool we have to decide what programming language we're going to look at we have to decide are we going to try and automate things that are easy or things that are hard or things that we do a lot

[61:41](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=3701s)

of or things that we don't do a lot of but when we do it we make mistakes right work what is the aims of what we've gone and some paths through the system have prerequisites that we have to automate regardless so we have to be able to log in or start a session and so no matter what approach we do we have to open those we have to have the capability for automating it in the first place then we also think about what our aims what are we trying to achieve now some people would say why are we automated right because I don't often use why questions I have to say what are

[62:17](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=3737s)

we trying to achieve if I say why are we automating then it could be because everyone is automating because if I don't automate and then my career goes down the Pam because I won't have any skills to build up but what are we trying to achieve focuses our attention on and if we put all the effort into this will we will we gain what we want over is it worth us doing this and we also consider are we doing a tactic clear strategically where a spoke test might be a tactical thing in terms of I just want to know whether the

[62:53](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=3773s)

application is up I can use a tool to do that it's a tactical approach and if smoke test is a subset a regression then it's a strategic thing where we've got the regression test but that concept of tactical or strategic helps me think different what do we when do we have to achieve this by right have we got deadlines that we have to do this and we do know for ourselves to want to improve or the projects go in live at this point therefore in order for us to actually make a difference we have to automate here because we then have to ramp up at this point can we achieve it by this deadline do we have enough funding to

[63:28](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=3808s)

build up what we need by this point are there any quick wins what is the minimum that we can do to meet these aims once we know what the aims are we can then look at options for doing it and so it's not about small current and regression is who are we trying to automate what web formation are we trying to get back what's the return we'll try again and then we look at our constraints in terms of time budget skill says and then it's experimenting around though because words like smoke end-to-end regression our strategic words and that the experiments and we can add a lot of

[64:04](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=3844s)

value by doing experiments by approaching it tactically and just getting something that actually work so capabilities aims constraints and that split between tactic and strategic is more how I approach that so if I was approaching with zero automation I'd be looking at well if if we're trying to release this very often where do we spend all our time when we are trying to do that and what parts of this are easy for us to automate given our current skill sets and if when we try and do

[64:40](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=3880s)

this tactically it fails are we prepared to who in the effort to make it work if we're not then maybe I won't automate at all maybe we'll just keep doing this manually can we bring in the development team can we make this pain that someone else feels so that they will collaborate on this so that we have more time because chances are our time is already consumed with all this testing and if we have to automate as well we now have to do all this stuff in the same amount of time so something's going to have to give so can we pull other people in it's that

[65:16](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=3916s)

thought process more than the the actual concepts

## Closing

[65:20](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=3920s)

so I think that was all the questions which was good and I'm looking through the comments in Facebook now to see if I missed any questions I don't think I did so if you want to squeeze in a question this is a good time otherwise I will be stopping because we did it for over an hour and I think it's just over an hour and I thank you for your time and attention hopefully the recording will be there so

[65:56](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=3956s)

we can watch that later and if I talked too fast at certain points you can go back later on and then and understand it if you do have any questions then I might see them if you tagged me on them in the test-ride group or you can ask me them through my contact form or on Twitter or anything like that I'm just pausing see more questions that can't see any so I think we're done and I'm watching the feed come through from

[66:32](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=3992s)

the buffered part to catch up with what I was saying so I'm gonna say thank you very much and goodbye and and I will end the livestream there I'm just kind of making it look like I'm frozen I'm not really but I am gonna hang up there so and thanks your time and I really appreciate it and thanks very much I'll see you later
