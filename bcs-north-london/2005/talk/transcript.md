# Talk Transcript — Context Driven Testing, A Personal View

Alan Richardson, North London BCS, 16 March 2005.

> AI-generated transcript of the original talk recording, lightly edited for punctuation, paragraphs and clear recognition errors. This is a transcript, not a summary or the prepared speaker notes. It has not been verified word for word by the speaker. Uncertain passages appear in square brackets.

The transcript begins at **00:54 of `contextTalk.DSS`**, matching the accompanying slide video, and continues to the end of the recording (approximately **18:10**). Timestamps use the trimmed video clock: add 54 seconds to locate a passage in the original recording. Section headings follow the slide topics; slide-change timings were reconstructed from the speech. The final few seconds contain the chair’s handover.

The original audio remains in the source archive. Audio and video files are excluded from the GitHub release.

## 00:00 — Opening and introduction

**[00:01]** Thank you. Thank you very much. I've now got way too much stuff in my hands, and I have to put my presentation up. I'm going to do some juggling, so entertain yourself for just a second. I don't know if you actually knew this, but I was trained as a stage hypnotist. I never quite got the hang of actually using one of these mics, but they did set up the chairs for me. So, in a couple of seconds, five of you are going to come down in front of me. [Brief unclear aside.] They have kindly provided me with a little gun, but they didn't explain how to use a laser. So I'll do this and see if you can hear. Yes, I am Alan Richardson. I am Compendium Developments. That is my website.

**[00:44]** And if you visit it, you will find all these slides, a whole bunch of papers and links to context-driven testing. It's interesting when we started there that the news headlines tomorrow are 50% of IT professionals have nothing at all to do with quality. You can make these statistics. That's probably 50% of IT professionals couldn't be bothered sticking their hands up. I'm going to be talking today about context-driven testing. Context-driven testing, if you don't know what it is, it's kind of a buzzword that's been around for probably the last two years or so. I think ever since lessons learned in software testing came out, the authors of that put together a website called context-driven-testing.com, which we'll see later on.

**[01:29]** And they basically set out seven principles that you can use to help your testing to become more context-driven. And it ties in very nicely with the kind of general experience that I've had as I've grown a little bit older and a little bit more experienced as a tester. One of those principles is no best practices. There are good practices in context, but there are no best practices. So I'm going to spend a little bit of time talking about that. And for those of you that are not testers, for those of you that are project managers or developers, hidden within this presentation, quite subtly I think, there are hints on how to make your testers more context-driven.

**[02:09]** And the benefit of that for you is that context-driven is actually about making everyone on the process more effective. So increasing your effectiveness is by increasing the tester's effectiveness. And although I'm saying all these things now, that's not how I started. I didn't start as a context-driven tester.

## 02:25 — I was a teenage methodology monster

**[02:27]** I started as a methodology monster and I knew how to test. I was one of the best testers on the planet. You could bring me into a project and I would know what to do before I even got there. I knew what the best practices were. I knew what the best tools were. I knew what documents we had to produce. I could quote chapter and verse to testing experts to justify what I'd be saying. If you have any testers on your team at the moment like this, you can actually quote some testing experts, the people that came up with context-driven testing, to tell them to be less like this because experts are telling them to do this.

**[03:03]** And if they can get their heads around that particular paradox, they have to change. They have no choice. One of the things that happened is when I used all the best practices, when I was not context-driven. Bad things happened to us as testers. We created a lot of work for ourselves. We created rods for our own backs. We built documents that no one would read. We put in processes that no one else cared about. But we did that because they were best practices. They were the right thing to do.

## 03:36 — From methodology to context-driven testing

**[03:37]** Over time, gradually, this is kind of an evolution of what's happened. You can see that I've changed because I have less hair and I've shaved just a little bit. What happens is we say this is actually the way to do it. We become aware of the context and we realize that the things we are doing don't necessarily fit into it. But we don't necessarily know what to do. We then start to become more context-based and we start to tweak our best practices to fit in, in order to try and make them work when the people that are doing everything else aren't doing the things we require of them to make our best practices work. And that's not strictly the best thing to do either. Context-driven is by coming in and listening.

**[04:18]** It's like coming in and going, I have a lot of things I can do. I have a lot of techniques I can draw on. I have a lot of approaches I can draw on. The basic thing for me is I'm going to see what is actually happening, what's actually going on and I'm going to respond to that. That's what context-driven is all about. It's like being effective within that environment. I think beyond this, we then have a stage where we become system thinkers. We become influential in the context. I don't necessarily know if that's what will happen or not because I'm still plugging about in this context-driven world. Because sometimes it's hard to be context-driven because there are constraints on the context that other people impose on us.

**[05:00]** Bob wants you to do this. You have to do this whether that's appropriate for that context or not. We need this document produced. All these are constraints on the context that we have to work with, even though they're not necessarily there for the benefit of the context.

## 05:16 — I ceased my evil ways

**[05:16]** Okay, so I kind of ceased my evil ways. I'm less of a scumbag than I was. Those of you in the audience that have worked with me, no doubt can disagree on that particular point. But what has happened over time is that I've now asked more questions. Testers always ask questions, I think. Hopefully. They're context-driven, they ask slightly different questions. They're asking questions to try and get behind the surface veneer of what you're saying, to try and get to the heart of what you're trying to do. You want to know what it is you're doing, what it is you want to achieve by doing that, how you're going to do it, and how you're actually doing things.

**[05:54]** Not what you say you're doing, but what you're actually doing because that's what we have to respond to. I work more closely with people now. When I was growing up as a baby tester, there was the notion of a best practice with independent test teams, which I think that was created by test consultancy. So they could sell themselves in and remain independent, and not have to mingle with the great unwashed development team that they were having to work with. But fundamentally, independent testing is independence of thought, independence of viewpoint. That's what we bring to this. I've become more of a consultant rather than a salesman or a pusher.

**[06:31]** In fact, a good salesman is a consultant in that they'll ask questions of you in order to match your needs. You'll go in and you want to buy a television, they'll ask who's going to watch it, where it's going to be placed in the room. A bad salesman is going to point you to a television and try to sell you this one. A bad test methodologist is going to point you directly to the V-model and say, we're going to use the V-model, this is what we're going to do, and I'm going to sell it to you and tell you all the benefits, rather than look at what needs to have happened. I think I became more effective. I have no numbers to back any of this up. I just have experience. This is the way I work. This is the way you've worked. This is the way I've evolved. I'm not going to give you any numbers.

**[07:06]** If you want numbers, you can make them up yourself rather than have me make them up. And less identification with the notion that I am a structured tester. As soon as we identify ourselves with a particular role, with a particular phrase: “I am an exploratory tester”, “I only do exploratory”, “I am a structured tester”, we then bring in a whole bunch of baggage into the context that wasn't there originally. We want to try and avoid doing that when we're context driven. So having warbled a bit,

## 07:33 — What is context-driven testing?

**[07:33]** context-driven-testing.com has seven basic principles that are summarized up here. You can read them now or at your leisure later on when you visit my website. I don't mind. Or go to context-driven-testing.com where they're not shown in such a nice form. I'm going to focus on the no best practices one, because all the rest are obvious, but then no best practices is obvious. I'm going to explain why it's so utterly obvious.

## 07:57 — Is unit testing a best practice?

**[07:57]** We're going to take on unit testing to start with. Unit testing is best practice, isn't it? Unit testing is actually two words, it's not a practice. I don't know how you do unit testing. When I say unit testing, each of you has in your head an entirely different thing that doesn't dictate what the process is, that doesn't define the process. I've seen unit testing done on sites entirely differently. If unit testing is a best practice, how can it be done so completely differently, so completely badly, so completely well? Best practices, surely they're the best thing we can possibly do. That's why we do them. By doing them, we're doing the best thing we can do.

**[08:33]** By doing any of these best practices, aren't we doing the best thing? Well, it depends.

## 08:39 — What about other best practices?

**[08:39]** To pick on the V-model, because we should pick on the V-model, and when people say they're doing the V-model, I've never met anyone that has done the V-model. I've met people that say they're doing the V-model and build testing processes that would possibly work if someone was doing the V-model, but the reality is, when someone says we want to do the V-model, chances are what they're saying is we want to introduce some validation and verification early. We want to check the various bits and pieces that we produce as we go through the development life cycle. And if that's the case, then that's what we should work with.

**[09:16]** We shouldn't work with the V-model. We should work with what's actually going on. What's the reasoning behind wanting these particular processes?

## 09:24 — X is a best practice for us

**[09:24]** Now, you may well do best practices on your site. I'm not going to disagree with you because it'd be a big fight, and I can only take four, five of you at a time. If you are doing best practices, it's important that you don't let that limit your thinking. The notion of something as a best practice, what it tends to do is go, we're doing a best practice, therefore we don't have to think anymore. Hooray! However, chances are you could probably [unclear] thinking a little bit more, working out how did we come to the conclusion that this was a best practice for us. Hmm, if it's a best practice, why didn't it work particularly well? Ask yourself these questions.

**[10:00]** It may well turn out to be a particularly good practice for you, and hooray for you if that's the case. But do think about it, and don't limit yourself to the notion that it's a best practice.

## 10:12 — What is context?

**[10:12]** So, what is context? Well, pretty much everything. So the consequence then is, how on earth are we going to deal with this thing called context? We have to look at what's important within that context. Some of the contextual principles deal with what's important, and that the people are important. The solution, meeting the stakeholders' needs, those are the things that are important. But when we deal with context, what we're actually dealing with is our perception of the context. And each and every single one of us is going to have a slightly different perception of that context. We all bring our own mini-context into this bigger context, which brings us to the notion of systems thinking.

**[10:49]** We're all little systems in a bigger system trying to make other systems happen, if that's true. And what forms the context? Our beliefs, our needs, our requirements, our dreams and desires and prejudices, all these things. And they will color our thinking. They will change the way we interact with people. And what is important is that what we're dealing with here is a system. A system has relationships between elements. Those relationships are important. When we identify the elements in this context, context is very important. A system is not a collection of things.

**[11:25]** A methodology is often a collection of best practices. A collection ignores the notion that we have relationships between things. We have flows. We have a context which is moving, which is changing. Because our context is our perception of what's going on, as we learn more about the project, our context will change because we perceive it differently. We learn more things. It's always amazing to me that we start deciding what we're going to do when we know least about what it is we're actually going to do or what's going to happen. We have to be able to change our minds. Working in a context is about when we learn more, we will rethink what we're doing and decide if what we're doing is the best way to do it.

**[12:06]** That, to me, is one of the things that a context-driven tester is going to do. And that's why we're going to ask you questions as we go through the process, to learn that, to respond more effectively.

## 12:16 — What to expect from context-driven testers

**[12:16]** So what else can you expect from context-driven testers other than the questions they will ask? Well, they will ask questions. They will ask questions to get to the heart of the context, to challenge the assumptions of what you're doing, to explore the context. You can expect them to ask questions of themselves. They will go away into a corner and huddle and mutter to themselves. I don't know if you've seen testers do that. They tend to be often put in other parts of the building, so you don't get to see them do that. So that's a common testing technique. They change their minds. They replan what they're doing. That's what a context-driven tester will do.

**[12:52]** But these are things I expect anyone who is working with context to do. They should be able to justify what they're doing in terms of the context as they've decided what it is, as they've worked out what it is, not in terms of this expert says we should do this. And I expect them to know their techniques differently, in more depth than other testers, to know what the assumptions behind their techniques are, to know what the preconditions of those techniques are so they can decide whether those techniques are going to work in this context or not, to have a slightly broader knowledge and deeper knowledge of the things they do as testers.

**[13:33]** So that's how you can recognize context-driven testing.

## 13:36 — How can you help them?

**[13:36]** And you can help them. The whole point here is that we're all part of the context. We're all part of the system. We're all part of the process. When we start dictating things in that context, we're going to start changing the context. We're going to start imposing blocks on it and make it less able to be as effective as we might be. So start to explain what it is you want to achieve, what it is you want to do. Provide examples of it and go into detail. If we dictate and say, I want you to produce this particular document, then you're going to force them to produce that document whether it's what you actually need.

**[14:12]** You probably haven't gone into enough depth to explain what you need from that document, how you want that document written, what sections we need, how you're going to use that document. Those are the things to explain to a tester if they're not context-driven yet. By doing these things to people, you can help them become more contextual. And the reason that you can help them is because this is what I expect context-driven testers to do to you if you're the development manager or the developer. These are the things I expect them to be trying to get out of you so that you are more part of the context, more aware of the context, and they can work more effectively with you. And the fundamental thing is to be truthful and honest and to trust each other because as soon as we stop doing those things, we start working again not with the context but with the surface veneer.

**[14:57]** And then things will crack and fall apart because we're not actually getting to the heart and truth of the matter. And avoid putting blocks in because I'd really like to help you, but I'm far too busy to do anything. As soon as you do that, you change the context, you change the flow, you stop people being able to respond to what you're doing because you've decided that you're not going to help them. And we are all part of the same system where we all have to help and be part of that context in order to make it work.

## 15:23 — Identify your context

**[15:23]** These are some sample questions that you might want to use in order to identify your context. If you are interested in questioning models for the context, if you explore my website, there's a couple of other papers on questioning models that you can use. And so I'm not going to dwell on this because it's going to burn itself directly into your subconscious. And before you know it, as you go back to your own working environment, you'll suddenly start to use these kind of questions without quite knowing why you're doing it or who you're doing it for or what you might hope to achieve by doing it.

## 15:54 — Learning more and closing remarks

**[15:54]** But fundamentally, if you do want to learn more about context-driven testing because we are slowly winding this. The web link at the top there that you can see that we did cover earlier on, context-driven-testing.com, that it has the basic principles. You should point your testers to that if they haven't seen it. There's a Yahoo News Group where people discuss context-driven testing and you see a lot of responses like, well, what should I do? And the answer is, well, it depends because we're all context-driven, so it depends on the context that you're doing. I wanted to take it slightly out of that. I wanted to take context-driven testing slightly out of the context that it's normally explored in and put it back in the development context where it belongs, where it belongs with everybody.

**[16:37]** If you do want to learn more about how you figure out context, how you work with these things, what systems theories are, I do highly recommend the study of things like general semantics or NLP. Gerald Weinberg's books are particularly good if you have to only buy books that are related to computing in order to justify a budget. Gerald Weinberg writes lots of computing books that are related to this particular area. Systems thinking, systems theory. The classic lessons learned in software testing, which is entirely contextual and disagrees with itself as it goes through, which is what we expect good context-driven testers to do. And other people recommend critical thinking and epistemology, but I wouldn't know because I can't study everything although I'd like to.

**[17:20]** Otherwise, just visit my website where all this stuff is there anyway. Unfortunately, I can't take questions, although I'd deeply love to because that's the way that I learn. I learn more about this by questioning my own thoughts about context-driven testing, by questioning the way that I do testing. And that's fundamentally how we learn. So later on when we do have the question and answer session, hopefully you'll have some questions so that I can learn a little bit more. But thank you for tolerating the wildly enthusiastic hand movements that would prevent me from using a handheld mic. Thank you.

## 18:02 — Chair’s closing remarks

**[18:02]** Thanks very much, Alan. We will take questions [unclear]. My last speaker tonight...
