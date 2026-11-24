# Prepared Talk Script

Prepared script notes for the Software Development Summit 2013 keynote. This is a preparation document, not a transcript of the delivered talk. Original wording and paragraph order are retained.

Hi, My name is Alan Richardson, I'm a test consultant from the UK and these are my main websites and twitter handle.

@Evil Tester – why, because I find that funny.

This is the first conference I've been to that has Developers and Testers and Real QA people, not testers pretending to be QA people, real QA people. Its like a big project out there with lots of different roles. So mix that with alcohol later on and I'm expecting fights. You can tell the kind of projects I work on.

When I was writing this presentation I realised a few things, because I had to revisit and think about previous roles. And I realised that development work involves more exploration than I realised, that exploratory testing is kind of a natural way to test, that when we do exploratory testing its a lot easier to see the unique skills that each tester adds to a project and that exploration is an undervalued part of the QA process – because its hard. And I'll try and cover all of that in this session.

So this is the blurb, remodelled as a mind map, because this is what we do. We model things. We have to get used to modelling, creating models and reading models. And we have to realise that the models show insight into our belief systems. The BS with which we approach the world. Because when we interact with the world we find things that are not in the model, new information that helps us change our model, or we identify problems with our observation of the world and interaction with the world. So models are really important.

And I better give you an overview of exploratory testing. Bear in mind that this is exploratory testing as filtered through my BS, my Belief Systems.

I don't really do definitions, but other people do. So I owe a debt of gratitude to them, because all I have to do is take their definition and work with it.

Last time I checked James Bach's website defines exploratory testing as “An interactive process of simultaneous learning, test design and test execution.” I've seen other people quote this text but miss out the “Interactive Process” part – and that's really important. Otherwise people start to think it is a technique. Its a process, with a set of feedback loops, and varying inputs and outputs, like the Shewhart Cycle; Plan- do -Check- Act, or a TOTE loop.

Its something we do, where we are heavily involved in and we bring our skills to bear, and its something we can learn to do better.

And for some of you that might mean something undocumented, uncontrolled, risky, whatever. And some of you might have some justification for thinking that, because you might have seen people do really bad exploratory testing. Pretty much every software process when done badly can be criticised as Undocumented, Uncontrolled – whatever.

And you are entitled to your belief systems.

I'm going to tell you mine.

So exploratory testing for me is low overhead. We try not to add too much extra stuff on top, because that can kill it. Too much formality. Too much written reporting. Too much squeezing it into existing tool sets. That can kill it. I see very little waste in exploratory testing when done well.

I expect it to be done fast. Meaning that people can start quickly, with minimal information because part of the process is learning and seeking out information. It produces documentation as it goes rather than a lot up front.

I expect the testers skill to shine through. Working on teams doing exploratory testing has really helped me have more respect for testers on the ground that have been undervalued in other teams. People are unique and they approach testing with all the models and skills they have learned from other disciplines. And we build teams that balance all the skills that the different testers bring.

The team is really important. We have to work together so we co-ordinate our work, approach the system from different angles. Debrief and share the knowledge we are gaining of the system.

Intent. One of the major features I stress in exploratory testing is intent. Test Design. At any point you should be able to ask an exploratory tester why they are doing something, and they should be able to tell you about the decision that led to this current approach, or the risk they are evaluating, or the issue they are investigating or the technology they are trying to understand.

The tester is continually learning so they have to keep evaluating and re-evaluating what they are doing. Have they done enough here. What haven't they thought of? Have they gone deep enough?

And I think Exploratory testing is evidence based. We produce a lot of documentation and evidence as we test, some of it from the tools we use to help us observe the logs and the system messages. Some of it from the notes we take.

There is a lot going on in the process of exploratory testing.

And I have no idea what you think of when you see these roles. But I've done each of these roles in the past and exploration was really important to each of them.

I've developed software. Commercial software. Much of it didn't sell, no reflection on the quality of the code – more the marketing and the industry conditions.

And I do see some rubbish posted on line. A lot of it by testers. Who I think should know better. But stuff like this “Developers shouldn't test their own code” “Developers don't make good testers”. Some of you may believe this. I'm not going to ask. You are entitled to your own belief systems. You are entitled to your own BS. I do not subscribe to this BS. This does not form part of my belief system.

I think I'm a pretty good tester. And people hire me to help their testers become better. And I was a developer so developers can make good testers.

Developers not only should test their own code. But they do. Like everyone else they can learn to do it better. But they do.

So I put these slogans on T-shirts, because that's where they belong. They aren't 'real' they are humorous slogans that we put on to laugh about things like “Can't program? Become a tester.” and “No IT Skills? You must be a project manager” stuff like that. None of it is true. T-shirt slogans.

When I look back at my development I realise that exploratory testing is a natural way to test. If you sit someone down and ask them to test a system and they don't know how to “test” they won't start writing a test plan or ask for the documentation and requirements, or create a test policy or strategy. They'll start doing exploratory testing. And likely it won't be great testing, but it will be a natural way of testing.

But we seem to under valued this.

Instead of learning how to build on millions of years of evolution. We put people on a one week training course, give them a certificate, pat them on the head and say “go forth and test my son”.

Harness your natural exploratory tendencies and do exploratory testing.

Certainly when I first started doing development, this was what I did. I would write the game, move the sprites around, wonder why I got divide by zero errors as I approach the side of the screen, wonder why the bullets suddenly teleported to the other side of the screen. Stuff like that. We learned to explore.

And we can learn to improve our work. Traditional testing training doesn't seem to cover model building much, or how to ask questions of the system. It doesn't cover note taking and note taking is essential for good exploratory testing.

Other disciplines do this. Scientists are trained in how to write in lab note books. To write down their experiments, the steps in their approach, the data they used, the measurements they took, the observations they make. They write down their thoughts, ideas, questions. The write down the date and time. All so they can look back on it and reflect, and learn, and communicate it to other people.

And none of this is limited to testers. Everyone can benefit from these skills. And as testers we can work with developers by pair programming and question the system together.

As a developer I always tested. Not as well as I do now. But always. And always with an exploratory approach. To learn more about the software I had written.

Initially we just wrote code to test code. It wasn't formal unit tests, but code to exercise other code and run through lots of combinations to see if it could handle it.

Then formal unit test harnesses where each test is a little experiment and question we are asking the code.

And then TDD comes along and we learn to write the code by asking questions, by exploring, and leaving a trail of documented exploration behind us.

Now, my coding is an exploratory learning approach. And books like “Growing object oriented software through tests” show that developers recognise this. Possible more than testers do.

Applying the various things we have learned to do in exploratory testing has helped improve my development skills.

As a tester, clearly exploratory testing has a lot of relevance. And its great that over the years it has become a more common place 'thing'. Because we used to have to sneak exploratory testing in.

We would plan our testing, write our scripts, cross reference them to requirements etc. etc. and then start working through them.

But as we ran the tests we would notice stuff on the edge of the script. In functionality that we weren't testing yet. But it was obviously something we should check out. And we have a quick sneak look. And sometimes we wouldn't find anything and that would be fine, but we had no evidence that we had done the exploration. Our documentation was pretty much a tick saying 'yup, did this' I produce more evidence and documentation now that I do exploratory testing. But sometimes we would find problems and they would be problems we hadn't scripted for. So we had to write a new script and a new set of test conditions and cross reference it all together before we could raise the defect and it was all slow.

We used to sneak the exploration in.

But then exploratory testing became a valid thing to do. And we learned to explore properly.

But it was hard.

All that thinking. All those decisions. All that learning. All that stuff we are observing. All that modelling to understand what we are seeing and where we have been. All that documentation. Ive never written so much when I've tested. And I'm trying to do all of this at the same time and its hard.

“Yes, we tried exploratory testing and it doesn't work” Because its hard. Learning to walk is natural, but it is hard, we fall down. We get up. Eventually we learn to run. And even things that are natural we can learn to do better. We can learn to improve our posture as we walk. People study breathing and learn to breathe more effectively for relaxation. We can learn to improve the skills that come naturally.

And if it was hard for me as a tester. It was even harder as a manager. Because I had to trust my staff.

Oh my god. That wasn't easy.

As a manager we have to learn to mentor our staff and train them, and avoid putting too much formality on the process. You probably have to put in some to help documentation, reporting, team working etc. But too much and you kill it. It has to help the team, not just the manager.

And as a manager you have other concerns as well. You have to justify this to the external system. The broader culture as well. So you have to bridge the gap if the culture doesn't support it. Again without imposing additional stuff on the team because they have a hard enough time learning exploratory testing in the first place.

And then as you move up the ranks. As head of testing or whatever, its even harder because you are further away from the testers. And you are responsible for it.

So much of this comes down to trust, evidence, team work and communication. Its hard. But its worth it.

I don't like it when I work as a testers and people call me a QA. I'm not. I have worked in QA. But it wasn't pretty for me.

I didn't want to be head of quality.

I believed, that if I was head of quality. Everyone else would think quality was what someone else did.

And a lot of the time QA means process. And Compliance. And Checking. And Rules. And I can understand why, but it wasn't really me.

But I've been looking at quality for a while. Like most people when they work in testing, we read quality books – Juran, Deming, Toyota Stuff, Crosby, etc. etc. even though 'testing' isn't 'quality'. A lot of the time when we start with testing we thing we are.

And I think that's why a lot of testers are comfortable with the term QA, even though that isn't what they do.

There are a lot of definitions of quality out there. I like this from Juran.

Juran's quality Handbook is about 1000 pages long and from it. I've pulled out 2 paragraphs. So I may not be representing his views fully.

But he has “stuff that we can check” - stuff that we agree in advance that we can comply with and measure and check for. And then he has “All the other stuff we need to look for to make sure we haven't screwed up”

That's my interpretation of Juran's words on the screen there.

And we've had Validation and Verification in IT for a while, but both of those, when I look at the formal definitions of them relate to requirements. They aren't really about going outside of the requirement space. In my mind.

Recently Checking vs Testing has come up in testing. And this is credited to James Bach and Michael Bolton again. And you can look up their definitions of testing and checking. I've put down my interpretation and it may not match theirs.

But I'm more interested in telling you why I think it is important and relevant for my interpretation of Quality Assurance than selling their definitions to you.

I've found this distinction much more useful in my work that Validation and Verification. Because as I test I can examine what I've done and look for compliance and checks and conformance and also – have I gone outside the boundaries and looked for field failures and stuff that might lead to dissatisfaction that we didn't think about in the early stages.

And I think it maps on well to Quality Assurance.

Because a lot of the expectations from QA are about enforcement or checking. Because that is easier. It is easier to define, it is easier to check for compliance, it is easier to write standards for etc. etc.

But we need the 'testing' part. To round of the picture.

So when I was involved in QA, I spent a lot of time, trying to reduce the amount that people had to comply with and emphasise the amount they had to take responsibility for. To push responsibility back on the team because QA is everyone's business.

But again Culture can kill this. Because trust is hard. A lof of QA you see in organisations has nothing to do with Quality of product it is to do with compliance to process. And that doesn't necessarily lead to a quality product.

And that brings me on to Agile.

And in Agile we do all of this stuff, we just do it faster and more often.

From all of the roles I've learned not to get hung up on role definitions. Even though I know that other people will. “Developers should not test their own code” “Testers are failed developers” All of this is role based.

Not individuals.

Not skill based.

And the biggest lesson from Exploratory Testing for me, is that we agree meaning, and we work together, and we create teams that span skill sets and have space for everyone to contribute their value and leave no hiding place for waste and we do all of this through exploration.
