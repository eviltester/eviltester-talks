# Learning, Developing, Evolving - Prepared Script

Prepared talk narrative from the working document, retaining alternative sections and wording. Submission deadlines are omitted. This is not a transcript.

## The Blurb expanded into a Talk for Sigist March 16th

45 mins

## \+ Technical Web Testing Intro

Can testers still coast by with a few techniques, and a few buzzwords? Can testers still survive by producing endless pages of tests without executing them and relying on the project getting canned after a few years? In some companies they possibly still can, but not for very much longer, Alan Richardson will explain why.

Title: Learning, Developing, Evolving: The Path of the Technical Tester

Call to action: Testers need to get more technical, here are the basic steps

Thesis: Testers will not be able to survive for much longer with the traditional approach to testing. We need to smarten up, get more technical, become IT professionals if we want to survive. And buy survive I mean, ‘work on good projects’ and not be left on the side like little dinosours awaiting extinction.

Act II

|  |  |  |
| --- | --- | --- |
| Times are changing and testers need to change with them | description of the bad old days<br>description of current approaches<br>the challenge to testers of the new approaches |  |
| There are models and approaches that can help | These are generic models and are not just applicable to web testing |  |
| Bluffers Guide to Technical Web Testing |  |  |

Alan Richardson intro

## \+ Testing Used to be Easy

year + projects

nothing to test (sometimes ever)

lots of scripts, meetings, techniques, derivation, writing, updating, amending etc.

Y2K

Outsourcing

## \+ Testing can still be easy... but not for very much longer

Agile, Lean, TDD, BDD, O/S Automation

“It's astounding, time is fleeting

Madness takes its toll

But listen closely, not for very much longer

I've got to keep control”

quote for why things change

Software Development changes constantly. Software Testing needs to change too. The ‘Test’ no longer remains the sole property of the ‘tester’. Developers and business analysts can write automated requirement tests numbered in the thousands without any help from testers. Testers need to evolve their role and approach. By adopting more technical approaches testers can add value that no-one else on the development team does.

## \+ Testers need to change

The ‘tester’ needs to work quickly, to learn to approach the system technically as well as from the requirements domain. The ‘technical tester’ comes armed with tools, and the ability to construct their own tools. Able to strip the application down to its basics. Able to hone in on technical risk and exploit it. Ah, you ask, is it really possible to learn this dark art? Are these terrible secrets available for anyone to use? No, we say, not just anyone. For, only to those that attend this talk will Alan explain the approaches he uses to do this.

## \+ What is the secret of change o worry wart?

More importantly will Alan will explain some of the mind sets, models, and techniques that form his general technical testing model, including:

- Learn the traditional testing concepts that stop you testing technically

- How to get more from your testing books than they ever intended to tell you

- How to build test techniques from first principles

- How to quickly build a map

- How to use the difference between map and territory to improve your testing

- The Ying and Yang of technical testing: Observe and Manipulate

Things WebTesters Should look for:

User provided headers: <http://blog.c22.cc/2011/04/22/surveymonkey-ip-spoofing/>

I try and keep things simple. All my models and concepts are pretty simple when it comes right down to it because I generalise up. I remember stuff at the trunk, and follow derivational paths to get to the leaves and branches. I try and start with first principles, and simple principles. So that is where these models come from.

## \+ Bluffers Guide

All tools must tie in to principles above

BurpSuite, WebScarab, Fiddler - or if you want to pay money BurpSuite, Charles

Firefox, Chrome

Out of the Box

Plugins

Of course, Alan will describe some of the free and open source tools he currently uses to approach testing technically. But this is no mere “Bluffers guide to Technical Testing”. You will get more than just a simple list of tools and tool types.

## \+ Summary

Attendees will leave with an understanding of the need for, and the pragmatics of, technical testing . And a solid set of next actions and research topics leading them towards the path of increasing technical skill.

=================================================================

Eurostar Submission

Learning, Developing, Evolving: The path of the technical tester

Software Development changes constantly. Software Testing needs to change too. The ‘Test’ no longer remains the sole property of the ‘tester’. Developers and business analysts can write automated requirement tests numbered in the thousands without any help from testers. Testers need to evolve their role and approach. By adopting more technical, and systems based, approaches testers can add value that no-one else on the development team does.

The ‘tester’ needs to work quickly, to learn to approach the system technically as well as from the requirements domain. The ‘technical tester’ comes armed with tools, and the ability to construct their own tools and techniques. Able to strip the application down to its basics and hone in on technical risk to exploit it.

Alan has developed his own skills of technical testing across a range of technologies, including web and desktop apps. He now sees a common, and continually evolving, model spanning his approach to testing, and learning, which guides his relentless pursuit of increased testing skill far more than any set of traditional test techniques.

Alan will describe some of the free and open source tools he currently uses to approach web testing technically. But this is no mere “Bluffers guide to Technical Web Testing”. More importantly Alan will explain some of the mind sets, models, and techniques that form his general technical testing model.

- Learn the traditional testing concepts that stop you testing technically

- How to get more from your testing books than they ever intended to tell you

- How to build test techniques from first principles

- How to use the difference between map and territory to improve your testing

- The Ying and Yang of technical testing: Observe and Manipulate

Attendees will leave understanding the need for, and the pragmatics of, technical systems based testing. And a solid set of next actions and research topics leading them towards the path of increasing technical skill.

Traditional testing techniques are a crutch that hold testers back from their full potential

Technical skills and knowledge allow us to create new techniques and approaches

Tools are a sideffect of modelling a system and applying technical knowledge

"A variant of this talk will first be given at the Sigist on March 16th. It is an extension of material given at the peer conference LEWT, over a variety of years.

I have spoken at previous Eurostar conferences, Star East, TestExpo, LEWT, FORTEST, Test Management Summit and Forum, and a variety of other testing events."

"Alan Richardson has been involved in Software Testing since leaving university in the early 90s. Over the years he has programmed testing tools, conducted exploratory and automated testing, and been involved in most 'types' of testing (although he tries to avoid UAT). His recently published book "Selenium Simplified" explains how to write Automated tests in Selenium 1.0 and Java. Most of his written work on software testing can be found at compendiumdev.co.uk and eviltester.com"

\---------------------------------------------------------

Paper

\---------------------------------------------------------

Main points:

Terrain - Map

Models

<http://suntzusaid.com/book/10>

The olden days were great weren’t they. We sat in the cool of the waterfall, long lazy days writing and maintaining test scripts. Reading requirements and

Techniques Considered Harmful

- Some test techniques are modelling techniques:
    - Classification Trees, Truth Tables (Decision Tables), State Transition Testing.

- Some Test Techniques are wooly wibble:
    - Black Box Testing, White Box Testing

- Some Test Techniques are heuristics that have been around long enough to have garnered the status of ‘formal technique’:
    - equivalence (partitioning or classes), boundary (value analysis or value testing.

EQP and BVA both require you to build models. And then you apply a known technique for identifying ‘test cases’ from them.

- Some Test Techniques are folklore:
    - Pairwise Testing, Orthogonal Array Based Testing

Where the ‘coverage’ of lots of data is viewed as the aim, without having to make too many decisions about the ‘scope’ we do. Essentially more data better than less data.

- Some Techniqes are soft and informal:
    - Use Case, Requirements, Domain Analysis

- Some Techniques are presented as code based:
    - control flow testing, data flow testing

These techniques are really useful for automated model based testing. The fact that we used them as manually techniques with no automation shows how averse to technical automation the field of testing really became.

Consider classification trees. (<http://www.statsoft.com/textbook/classification-trees/)> A statistical modelling tool using a very simple tree structure. Easy to build the model, provides a where branches have statistical probablities and then you let the automated tool cover the model and

But for rapid, manual testing, where we attempt to add value quickly. Traditional coverage based model driven techniques become appropriate for automated testing, not for manual testing.

\----

At the same time that I was using test techniques and working on waterfall projects where structure and mandates were the socially accepted norm. The sub-cultures that I was involved in had slogans like “Nothing is true, everything is permissible” “\*\*\*\* ‘em if they can’t take a joke”, freedom and non-conformity were the implied norm.

This helped.

I looked for alternatives. I tried to understand what made the techniques useful. And I started to understand that what we did was apply a function to a model.

I started to understand that the models we used were technology agnostic. That they didn’t require, encourage, or even value the pursuit of technical knowledge because that additional model didn’t have a representational form in the models we used to drive our techniques.

So we had to apply our techniques in different ways.

There followed a slow dawning realisation that our techniques were all borrowed from other disciplines, and simplified in the process.

Here are a few:

classification trees from statistical analysis

domain modelling from mathematics

state transition graphs from who knows where - probably Operations Research

Why did we limit ourselves? We should have kept stealing and pillaging.

Some testers did. They refused to limit themselves to the methods that had been initially pillaged and used “cross-disciplinary” approaches.

\-----

I describe technical testing as the type of testing I do when I use technical knowledge and multiple overlapping high level models of a System’s underlying architecture to guide my testing from first principles.

This is as close to a definition as I can get at the moment. Because I dislike definitions. Definitions can constrain your thinking and the basic premise behind technical testing is that everything is permissible, and nothing is true.

\-----

Traditional testing has taught techniques. All techniques are functions which given a model as input produce conditions or cases which can form the basis for testing against.

In the context of a waterfall model this approach to test analysis met a number of needs.

- Given that a long time was spent writing a lot of test cases, how could a lot of test cases be built in a systematic way? A small set of techniques using a small set of knowledge can result in a combinatorial explosion from a small set of diverse models leading to a lot of test cases.

- How can testing be consistent? By using a predefined set of techniques that work in deterministic ways.

- How can testing be taught? etc.

- How can we track test progress? By creating a set of cases from models using techniques we can assess coverage against the set of cases that result and provide % measures.

Sadly all of this placed more value on the technique and the output from the technique than the model. And now testers don’t seem to realise that the modelling part of the process was the most important, I base this on the fact that most test tools act as repositories for the output of application of the technique (function), and not the model (input). I base this on the fact that the techniques are applied manually and not automatically to a model.

I used to believe that this meant that we should automatically generate from a model. I think this is valid, but I think we can move quickly and manually through the use of model exploration.

So now, when we have to move quickly, identify risk quickly and add value that other roles on the team can not add - the modelling part of the above process will provide the most value.

By taking ‘models are more important than cases’ as a guiding principle in your testing, and then deriving new techniques or questioning strategies which you can apply to the models, you can move quickly, identify risk quickly and add value that other roles on the team can not add.

\--------------

Final notes.

What preceded was a current (at the time) generic model of what I believe my test approach involves. You should treat it as a model. Find my biases and areas where I fear to tread then act, identifying them makes exploration permissable. Act as if nothing in it is true and that discovering the truth is up to you.
