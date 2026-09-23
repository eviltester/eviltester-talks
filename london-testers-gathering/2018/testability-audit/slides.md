
<!-- footer: @EvilTester -->
<!-- page_number: true -->

# The Evil Tester's Test Ability Audit

## London Tester Gathering Workshops June 2018

### Alan Richardson

* [www.eviltester.com](http://www.eviltester.com)
* [www.compendiumdev.co.uk](http://www.compendiumdev.co.uk)
* [@eviltester](https://twitter.com/eviltester)

<!--

TODO:

Go through each section - do the exercises, time them make notes, make sure exercises are interesting enough.

-->

<!--

LTD Logistics

It's a 4 hour workshop including breaks.

So aim for 3.5hours.

I'm waiting on confirmation from the venue but the aim is for doors to open at 08:30, registration happens, workshops happen 09:00 - 13:00, lunch, 14:00 - 18:00.

Also waiting on confirmation re breaks/tea/coffee.

-->

---

# Welcome & Intro

---

## Introduction

Hi, I'm Alan

eviltester.com/testability

- links to the example apps
- links to definitions etc.
- links to slides

---

## Blurb

Ability is one of the key attributes that elevates your testing proficiency. In this workshop we will evaluate ability from a number of different perspectives:

- our ability to test
- the features of applications that support our testing
- technology attributes that support testing
- application and tool attributes that ease automating


---

## Blurb

We will also take stock of our current ability and build an action plan to improve our test ability.

This workshop has elements of discussion, hands on investigation and hands on testing.


---

## Blurb


At the end of this workshop you will:

- Understand the difference between Testablity, Test Ability and Automatability
- Have Performed a Technology Testability Audit on Web Technology, Mobile Technology or a variety of application frameworks
- Have Performed an Application Testability Audit
- Have Performed an Automatability Audit
- Have performed an audit of your own Test Ability and created an action plan to improve your ability to test.

You will need a device (laptop, mobile, tablet) with wifi or internet access to take part in the hands on audit sections.

---

## Mob Exercise: What kind of things do we test?

People in the room:

- "What kind of systems do we test?"
- "What technologies do we test?"
- "Are the systems testable?"
- "Do we have the skills and tools to test them?"
- "Are the systems automatable?"

---

## Understand the difference between Testablity, Test Ability and Automatability

- Testability
- Test Ability
- Automatability

<!--

I think these are different things.

We will explore all of them.

-->

---

## Examples used throughout

- zty.pe
   - http://zty.pe/
- zombie - cli game
- protect the square - javascript game
- Google/Bing -  a search engine
- Anything else you want to use

---

## Mob Exercise: Is this testable?

- Zty.pe
- http://zty.pe/


_Quick Demo_

see also [EvilTester.com/testability](http://eviltester.com/testability)

---

##  Mob Exercise: Is this testable?

- Zombie CLI Application
- https://github.com/eviltester/zombie-cli-text-adventure

_Quick Demo_

see also [EvilTester.com/testability](http://eviltester.com/testability)

---

## Mob Exercise: Is this testable?

- Java Script Mouse Clicking Game

https://www.compendiumdev.co.uk/games/buggygames/protect_the_square/protect_the_square.html

Also in the Java App

- https://github.com/eviltester/TestingApp

_Quick Demo_

see also [EvilTester.com/testability](http://eviltester.com/testability)

---

## Mob Exercise: Is this testable?

A hypothetical search engine e.g.

- https://www.google.com/
- https://www.bing.com/

_Quick Demo_

see also [EvilTester.com/testability](http://eviltester.com/testability)

---

## Are those testable?

- Do we know how to test them?
- Do we know how to automate them?
- Do we have the skills to test/automate them?
- Do we understand the technology they use?
- Do we know the tools we would use?
- Do we understand their functionality?

**On a scale of 1-10 for each, how sure are we of our answer?**

---

# What is Testability?

---

## Mob Exercise: Investigation Questions

- How can we investigate Testability?
- What does it mean to investigate Testability?

---

## Mob Exercise: What presuppositions?

What presuppositions exist for this investigation into Testability?

> "Testability"

Presupposition meaning:

- what is assumed true?
- potential bias

---

## Some Presuppositions

- A thing or concept such as testability 'exists'
    - What if it doesn't?
    - Would/should our investigation tell us that?
- We perceive value in the investigation of the concept of testability
    - what value?
    - how will we know we have attained value?
    - should we measure the value?

---

## Question wording can change our focus

- Pay attention to the wording you use

What should we be investigating?

   - "What is testability?",
   - "What does testability mean?"

---

## Differences

- "What is testability?",
    - presupposes testability exists, it 'is' (quantifiable, touchable)
- What does testability mean?
     - more open, it might mean nothing
- What does testability mean <context>
    - to me, in terms of this application, in this environment, for this project
    - Example based:
        - is X testable?
        - what makes X testable?

---

## Group Exercise: What is Testability

- Discuss in small groups
- We will then debrief and collate ideas from the groups

---

## Mob Debrief: What did we discover?

- What 'is' testability?
- What questions did we ask?
- How can we use these insights?

---

## Mob Exercise: What if Testability can be viewed as a set of Relationships

Relationships Between?


---

## Testability can be viewed as a set of Relationships

Examples:

- Tester
- System Under Test
- Technology
- Tools: available, that we know of, and we know how to use
- Techniques we use to test
- Features of the application
- Risks - guide testing, might be hard to test for (load, logging, etc.)
- Issues - can prevent paths through the application
- Time constraints - prevent performing certain activities or designing coverage
    - security testing challenge VM up for 1 hour was taking me more than that to scan the site

---

## I'm not looking to build a set of definitions, but...

> I want you to viscerally experience the difference between them and be able to investigate them on your particular projects and your particular skill sets to identify risks, issues, and improvement paths.

But...

---

## Definitions from ISTQB

http://glossary.istqb.org/search


- Testability
   - 'The capability of the software product to enable modified software to be tested.'
   - see also maintainability
      - maintainability
      - 'The ease with which a software product can be modified to correct defects, modified to meet new requirements, modified to make future maintenance easier, or adapted to a changed environment.'
- Testability Review
   - 'A detailed check of the test basis to determine whether the test basis is at an adequate quality level to act as an input document for the test process.'

---

## Definitions from ISTQB

http://glossary.istqb.org/search

- Test Ability
   - No Results found
- Automatability
   - No Results found

---

## Wikipedia definitions

- Software Testability
    - repeats ISTQB defn
    - "is not an intrinsic property ... and can not be measured directly"
    - "is an extrinsic property which results from interdependency of the software to be tested and the test goals, test methods used, and test resources (i.e., the test context)"

- https://en.wikipedia.org/wiki/Software_testability

---

## Wikipedia definitions

- Testability
    - for hypothesis testing
    - logical property such that counterexamples to the hypothesis are logically possible
    - The practical feasibility of observing a reproducible series of such counterexamples if they do exist

https://en.wikipedia.org/wiki/Testability

---

## Wikipedia definitions

- Test Ability
    - Wikipedia does not have an article with this exact name
- Automatability
    - Wikipedia does not have an article with this exact name
- Maintainability
    -  the ease with which a product can be maintained _for a bunch of reasons_

- https://en.wikipedia.org/wiki/Maintainability

---

# What is Auditing?

---

## Scientology Says

- The goal of auditing is to restore beingness and ability.
- Auditing does not use hypnosis, trance techniques or drugs.
- Auditing uses processes
- Many, many different auditing processes exist and each one improves the individual’s ability
- An unlimited number of questions could, of course, be asked—which might or might not help a person.

[1](https://www.scientology.org.uk/what-is-scientology/the-practice-of-scientology/auditing-in-scientology.html) [2](https://www.scientology.org.uk/what-is-scientology/the-practice-of-scientology/the-auditing-session.html)

---

## Auditing

> An audit is a systematic and independent examination

https://en.wikipedia.org/wiki/Audit

---

## Auditing - Cults vs Religious Movements vs Work

- Religious/Spiritual movements have a long history of auditing
   - Confession and other 'group' sessions
   - Used as a basis for future work
   - Anecdotal evidence suggests this may also get used for blackmail
- Work
   - "Woo hoo we passed"
   - very often no analysis of the results or thinking through

**The point is to incorporate the findings into your work life, not just 'list' stuff.**

---

## Modelling & Representation

> Q: "What is...?" == "How do you model...?"

As you audit you will build a model

- Entities,
- Relationships

---

## Why Questions

~~~~~~~~
public Belief why(String question){
    return beliefs.getNextAnswer(question);
}
~~~~~~~~

- Why? is a belief question
- Beliefs are models
- Why? might be useful, but How? What? When? Where? Who? answers might be more actionable and testable.

---

## Modelling & Representation

> A: Your representation

Models are transformed into - diagrams or representations used to communicate, or reflect on, your model.

- Lists
- Hierarchies
- Graphs
- Adhoc

Remember transformation is 'lossy': Deletions, Generalisation, Additions, Distortions

---

## We will audit...

- Technology
- Application
- Automatability
- Test Ability

_Mob Question: How might we audit each of these?_

---

# Technology Test Ability Audit

---

## Mob Exercise: Technology Influence on Testability

- Mobile, Web, CLI, green screen?

What would be easy to test?

- generate a list of technologies
- what ones are easy to test?
   - what leads you to think it is easy?

---

## Mob Exercise: Technology Test Ability is a set of Relationships

Between?


---

## Examples: Technology Test Ability is a set of Relationships

- Technology used - programming language, libraries, deployment process, hosting, servers OS, protocols
- Tools - manipulation, Interrogation, Observation
- Ease of Modelling
  - tools to visualise models
- Our understanding of the tools, technology, architecture
- Tools to hand vs tools available
- Time - setting up environments
- Access - how far we can go down into the technology (Observe, Interrogate,  Manipulate)

---

## Mob Worked example - Zombie RestMud CLI text adventure game

Technology TestAbility Audit

- Java
   - JRE version?
   - Cross platform?
- CLI interface
   - Mobile?
   - Tool: Terminal used? Shell used?

Ease? Difficulties? Understanding?

Any Questions about this Game?

Look at source what do we see?

---

## Example Debrief

- Java
   - JRE version? Cross platform?
- CLI interface
   - Mobile? Tool: Terminal used? Shell used?
- Architecture
   - 3 tiers: rules, cli engine, game engine (test at these instead?)
   - already existing automated coverage of rules and game engine

---

## Technology TestAbility Audit - Generic Audit Ideas

Models of

- what is it? levels, versions, interconnections, message protocols
- where is it?
- do we understand it?
- can we use it?
- risks?
- known issues?


---

## A Hypothetical Web App - A Search Engine - Technological Test Ability

- Technology: html gui, javascript, http messages to server, Http responses, JSON payloads, server software written in Java, index of web pages stored in a database, Http API, etc.
- Tools: browsers, mobile

---

## Group Exercise: Perform a Technology Testability Audit on Web Technology, Mobile Technology or a variety of application frameworks

- Work in groups
- Choose an application e.g. from http://eviltester.com/testability
- Conduct a Technology Testability Audit
   - Looking at the technology, What is it?
   - How testable is it? _{for you?, for others?, for everyone?}_
   - What would make it more testable - from a technology perspective?
   - What makes it less testable - from a technology perspective?
   - Any risks?, Any Issues?

---

## Mob Debrief - What did we discover?

- What 'is' Technology Testability?
- What questions did we ask?
- How can we use these insights?

---

# Application Testability Audit

---

## Mob Question: Application Testability?

- What might Application Testability mean?
- Differentiated from Technical Testability?

---

## Mob Exercise: Application Test Ability is a set of Relationships

Between?

---

## Some Possible Answers

- Features and Requirements
- our understanding of the features
- Data used, and how well we understand the data
- where features are implemented in the stack (overlap with technology)
- How does the application functionality support or hinder our testing?
- How does our understanding of the Domain impact our testing?

---

## Mob Exercise: CLI Text Game

Ease of which we can test an application and the application supports our testing.

- CLI Game Functionality - input, quit
- What hinders?
- What functionality might be useful?

---

## Some Answers for Application Testability Audit

- terminal might have features to help e.g. replay requests, track inputs
- documentation for game might help
- CLI Args to 'unlock features for testing'
    - `-h` for help
    - `-v` for version
    - `-verbose`
    - `-cols 40` - reformat output
    - `-txtlog logfile.txt`
    - `-jsonlog jsonlog.txt`
    - `-debug`
    - `-nobackups`
    - `-commandslog`

---

## Group Exercise: Pick an App and Audit it

- Pick an application
- Audit it from the point of view of the relationships we identified earlier
- e.g. what features help testing, what features hinder testing

---

## Mob Exercise: What did we learn?

- About Application Testability?

---

# Automatability Audit

---

## Mob Exercise: Automatability?

What might Automatability mean?

- Automatizability?
- Automation?
- Automatization?

---

## Exercise: Automatizability is a set of Relationships

Between?

---

## Examples: Automatizability is a set of Relationships

Between:

- tools, libraries
- Programming Languages
- application features - locators, state indicators
- application technology
- tasks and activities
- what I as a tester need to 'do'
- Interaction, Manipulation, Observation
- Assertions - Interrogation
- Making it easy to do stuff

---

## Mob Exercise: Questions to ask to help audit?

What questions can we ask that might help our audit?

---

## Example Questions to ask to help audit

- Is it possible for anyone to automate this? examples from others
- How would I automate this?
- What would I gain by automating this?
- What would I want to automate?
- Do we have the skills to automate this?
- Tactical or strategic?
- Fully automate? Partially automate?
- How long to automate?
- When would I have time to do this?
- Who cares if this is automated?

---

## Mob Worked Example - Zombie CLI

How could I automate this?

---

## How might I automate CLI App?


- TCL & Expect?
- Unit tests at each layer - game rules, cli engine, backend engine
- shell scripts?

~~~~~~~~ 
cat commands.txt | java -jar cli-game.jar -txtlog -jsonlog
~~~~~~~~

~~~~~~~~
java -jar cli-game.jar -txtlog -jsonlog < commands.txt
~~~~~~~~

---

## Mob Worked Example - ZType

- How could I automate this?
- http://zty.pe/

---

## ZType Automation

- WebDriver?
    - Possible, but likely too slow
- Image Recognition and OCR?
- Custom JavaScript code as bookmarklets
- Unit Tests

---

## Group Exercise: Pick an App

- Pick an App, any App
- Audit it for Automatizability
- What helps? What Hinders?
- What tools? How Automate?
- What skills? What experience?
- etc.

---

## Mob Exercise: What did we learn?

- About Automatability?

---

# Test Ability Audit

---

## Mob Question - Test Ability?

- What might Test Ability mean?
- What might Test Ability look like?

---

## Mob Exercise: Test Ability is a set of Relationships

Between?

---

## Examples: Test Ability is a set of Relationships

Between:

- our understanding of the tools
- test techniques we know
- our understanding of the technology domain
- our understanding of the application domain
- our understanding of the business domain
- how we can find information
- who else is on our team
- our experience
- our skills

---

## Group Exercise: Pick an App

- Pick an App, Any App
- What do you personally need to know/have/etc.
- What do you have? What do you lack?
    - regarding this particularly application

---

## Mob Debrief: What did we learn?

- About Ability?
- About ourselves?
- About Others?

---

## Test Ability and action plan to improve your ability to test

- What can you already do?
- What could you improve?
- What have other people mentioned that seems useful to you?
- What do you think is not useful to you?
- What will you work on next?
- What will you work on later?
- What will you not act on?

---

# The Audit to End All Audits

---

## Mob Question: How Can This Help?


### Question: How Would This Help you Test Differently?

---

## Possible Answers

- Know what I am capable of - more confidence in my own abilities
- Know where I have gaps
   - these could be risks
   - are they mitigated  by other people on the team or by our process
- Have a 'currently learning' list and experiment with this during my testing
- Am I:
   - testing deeply enough?
   - using tools effectively?
   - automating tactically and strategically?
   - growing as a tester?
   - experimenting enough?

---

##  Do we have time to test?

Evaluate: Time to test, or on to debrief of debriefs?

---

## Mob Exercise: What has the bigger influence?

- Technology?
- Application?
- Automatibility?
- Our Ability?

---

## Mob Exercise: Share any personal audit points?

- What will you do differently?

---

## Personal Sample Examples

I'm learning security testing:

- Subscribed to a bunch of security blogs
- Take part in Bug Bounties
- Look for live vulnerabilities and report them to companies

I'm improving my programming:

- Tidying up and open sourcing as much code as possible
- Refactoring to improve style
- More advanced project structures - parent pom.xml

I am not: performance, accessibility, .Net, Ruby, Python

I might: Kotlin

---

## Summary

- Think in terms of relationships
- This is not a formal Audit process
- Make it personal
- Decide to 'do' and 'not do'
- Model yourself, your process, your system, your environment and the relationships in-between

---

# End Credits

---

## Learn to "Be Evil"

* [www.eviltester.com](http://www.eviltester.com)
* [@eviltester](https://twitter.com/eviltester)
* [www.youtube.com/user/EviltesterVideos](https://www.youtube.com/user/EviltesterVideos)

---

## Learn About Alan Richardson

* [www.compendiumdev.co.uk](http://www.compendiumdev.co.uk)
* [uk.linkedin.com/in/eviltester](http://uk.linkedin.com/in/eviltester)


---

## Follow

- Linkedin - [@eviltester](https://uk.linkedin.com/in/eviltester)
- Twitter - [@eviltester](https://twitter.com/eviltester)
- Instagram - [@eviltester](https://www.instagram.com/eviltester)
- Facebook - [@eviltester](https://facebook.com/eviltester/)
- Youtube - [EvilTesterVideos](https://www.youtube.com/user/EviltesterVideos)
- Pinterest - [@eviltester](https://uk.pinterest.com/eviltester/)
- Github - [@eviltester](https://github.com/eviltester/)
- Slideshare - [@eviltester](www.slideshare.net/eviltester)

---

## BIO
 
Alan is a test consultant who enjoys testing at a technical level using techniques from psychotherapy and computer science. In his spare time Alan is currently programming a [multi-user text adventure game](http://compendiumdev.co.uk/page/restmud) and some [buggy JavaScript games](http://compendiumdev.co.uk/games/buggygames/) in the style of the Cascade Cassette 50. Alan is the author of the books "[Dear Evil Tester](http://www.eviltester.com/page/dearEvilTester/)", "[Java For Testers](http://javafortesters.com/page/about/)" and "[Automating and Testing a REST API](http://compendiumdev.co.uk/page/tracksrestapibook)". Alan's main website is [compendiumdev.co.uk](http://compendiumdev.co.uk) and he blogs at [blog.eviltester.com](http://blog.eviltester.com)
