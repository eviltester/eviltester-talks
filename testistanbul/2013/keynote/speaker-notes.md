# Prepared Speaker Notes

Original prepared commentary from `notes.txt`, not a transcript. These notes cover the opening sections and end after the lightweight-script example; no missing commentary has been added.

"Experiences With Exploratory Testing"

## Future of Testing: New Techniques and Methodologies

The future of software testing will be exactly as it is today unless we change it. Where "we" means you, and it means me. We can't rely on anyone else to change the future for us. We have to take action. We can look to outside sources for inspiration but the actual process of change will result from our experiences and our experiments. That means, doing the work. More than reading the theory, it means actually taking steps to put new ways of working into practice.

Over the course of my testing career I've continually changed my test approach, and I expect to keep doing so. In this talk I'll cover some of the things I've learned as I practiced and improved my approach to Exploratory Testing. And what I learned by helping other people adopt exploratory testing.

Exploratory testing isn't new. But sometimes it feels like it because we have to keep justifying it in public and I keep encountering people who aren't doing any exploration as part of their testing.

Also those of us who do exploratory testing, keep changing the way we do it, and keep finding nuances in how we approach it, and new tools that help us. So Exploratory Testing constantly renews itself and changes.

And it keeps renewing because the entire exploratory testing process of testing relies on us observing what we are doing, looking at the results we get, and deciding what to tackle next for more information, and continually looking for new ways to improve. And we apply the same techniques we do when executing the testing, as we do to the testing process itself.

So I'll cut to the chase about the Future of Testing. It will be exactly the same unless you take responsibility for your testing process and change it. And that pretty much sums up my attitude to exploratory testing, and thats why I'm talking about it now.

## Some things I've learned by doing and teaching exploratory testing

I'm going to cover this in detail over the course of this presentation. But I've learned that we need to own our approach to testing, all testing, and make it personal, and we do that through experimentation. And that is the natural way that we learn and approach testing. If we don't know anything about testing then we would do exploratory testing.

But of course we do know a lot about testing and that is one of the main environmental factors that can kill exploratory testing. And the unlearning part is hard.

Fortunately when we pay attention to the evidence around our process we have all the justification we need to change. And when we focus our testing in documenting evidence and what we need then we can create very lean and effective processes.

And we do use Automation in our exploratory testing, I've done that in a bunch of ways, so I'm going to cover a few of the strands for automation in exploratory testing.

## What do we mean by exploratory testing?

James Bach defines it as "An Interactive Process of Simultaneous learning, test design, and test execution" and that's a good enough generic definition.

That's vague enough that it covers the territory and gives you an idea of its unique nuances. It doesn't cover everything that I do, or that other exploratory testers do, but they may be nuances encompassed by the definition.

I don't really care about definitions. So that's good enough for me.

## You have to adopt a personal approach to exploratory testing

But of course, I said that we need to have personal approaches to software testing. And I don't use James' words when I talk about exploratory testing.

I need to use my own.

Because when I talk about Exploratory Testing I'm talking about my approach to it, and my view of it.

I encourage all of you to own your test approach and the language you use for it.

## What do I mean by exploratory testing?

I prefer to communicate in terms of characteristics. These are my words that I use when I describe exploratory testing to other people, and they are what I expect to see when someone describes their exploratory testing to me.

## Low overhead &amp; Fast

I generally work in fast paced environments. And I think that is becoming the norm. We don't want to have to spend a lot of time preparing and documenting.

We want to maximise the amount of time we spend doing.

- Fast - to prepare for, to conduct, and communicate
- skill based, rather than technique based - a good tester is going find more problems when they do exploratory testing than a bad tester, if you use a technique then if the technique is appropriate then you should find the same problems as anyone else.
You biases and technical knowledge are going to influence your testing, so different people will approach the testing in different ways. And they will find different problems.

- team based
Because each person is unique, that's why exploratory testing is team based in a different way. With Technique and Script based testing, the team is their to partition out the tests to spread the work across the team.

You do a similar thing with exploratory testing, but the team collaborates on the testing that other people did, to review it and check the coverage, to see what additional ideas they have, to see if there are any new risks that we can identify from the information we found.

In scripted testing we tend to review for compliance to a process, rather than to identify new things to do.

- Dynamic
We change what we do, as we do it, and based on what we did.

- Evidence based
- We provide evidence of the testing itself, rather than ticking a script step off. We have to justify what we do, rather than what we said we would do.

## Why should you do exploratory testing?

I don't know. I don't know where you work, how you work, what your problems are, what your skills are.

But if you are attracted by James' definition, or the characteristics I listed, or anything you've read on line about exploratory testing then you'll know why you should do it.

Only you can answer that question.

I'm in the business of talking from my experience. So everything I say here is from 'my' perspective.

So I guess I better tell you why I started.

## Why did I start doing exploratory testing?

Frustration mainly.

I started in heavily structured environments where our test process was dictated by the tools rather than the environment we worked in.

And there were clues that our scripted process didn't cover everything that we did. Because we'd work through a script - notice something in passing. Then have to go off and investigate that off script.

And sometimes 'way off script'. Sometimes so far off script that in order to 'be allowed' to raise the defect we had to write a new test, with a script, that would allow us to raise the defect against it.

Now that's not a 'problem' with scripted testing, but its a common pathology that I associate with scripted testing, that every defect has to related to a step on a script, rather than existing as an entity in its own right.

Because when we tightly couple a defect to a script we end up owning that defect. It is a child of the script. So Defect processes end up becoming Test processes, and can lead to test teams not integrating fully with the development process.

At least that used to happen.

So because there were clearly gaps in our existing process, there had to be an alternative way of approaching testing.

And on one project we had no choice. We simply could not do all the testing that we needed to, if we continued with a pre-loaded test process. i.e. a test process where we had to derive all our tests up gront, then write all the scripts, then prioritise the scripts to decide which ones to write.

I mean really that makes no sense.

## "There is a risk of waste in the test process"

We use to claim to be risk based and focus our scope on the risks, but to write lots of scripts and then say, we don't have time to run all these so we are only going to run the scripts that equate to the risks. I mean why bother writing those scripts in the first place. It was all just waste.

And I've read too much about the Toyota processes and too much John Seddon to accept that much waste in my process.

So if we are truly risk based then start with the risk "There is a risk that the test team will waste a lot of time and money by creating scripts that are wrong and will never be run" Then figure out how to solve that problem.

So that's the risk that we tackled.

We started by making our test cases lightweight descriptions of things we wanted to test and stopped writing scripts.

In the early days of doing this we were subverting the process. And the process still demanded that we report on scripts passed/failed etc. When the tool forced us to write a 'script' so that we could track progress in the tool we create a script that looked like this

| Step # | Description | Expected Result | Actual |
| --- | --- | --- | --- |
| 1 | I've only added this because the tool made me | I'll test the conditions in the case and write down my observations |  |

And then when we tested we would make notes.
