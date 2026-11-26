# Notes on Testability

<!--

LTD Logistics

It's a 4 hour workshop including breaks.

So aim for 3.5hours.

I'm waiting on confirmation from the venue but the aim is for doors to open at 08:30, registration happens, workshops happen 09:00 - 13:00, lunch, 14:00 - 18:00.

Also waiting on confirmation re breaks/tea/coffee.

-->

<!--

TODO:

Go through each section - do the exercises, time them make notes, make sure exercises are interesting enough.

-->

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


We will also take stock of our current ability and build an action plan to improve our test ability.

This workshop has elements of discussion, hands on investigation and hands on testing.

At the end of this workshop you will:

- Understand the difference between Testablity, Test Ability and Automatability
- Have Performed a Technology Testability Audit on Web Technology, Mobile Technology or a variety of application frameworks
- Have Performed an Application Testability Audit
- Have Performed an Automatability Audit
- Have performed an audit of your own Test Ability and created an action plan to improve your ability to test.

You will need a device (laptop, mobile, tablet) with wifi or internet access to take part in the hands on audit sections.

Timings?

---

# Understand the difference between Testablity, Test Ability and Automatability

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

## Is this testable?

- Zty.pe
- http://zty.pe/

---

## Is this testable?

- Zombie CLI Application
- https://github.com/eviltester/zombie-cli-text-adventure

---

## Is this testable?

- Java Script Mouse Clicking Game

https://www.compendiumdev.co.uk/games/buggygames/protect_the_square/protect_the_square.html

Also in the Java App


https://github.com/eviltester/TestingApp

---

## Is this testable?

A hypothetical search engine e.g.

- https://www.google.com/
- https://www.bing.com/

---

## Exercise: What is Testability

- Collate ideas from the group


---

## Exercise: What if Testability can be viewed as a set of Relationships

Relationships Between?


---

## Testability can be viewed as a set of Relationships

Examples:

- Tester
- System Under Test
- Technology
- Tools
- Techniques
- Risks - guide testing, might be hard to test for (load, logging, etc.)
- Issues - can prevent paths through the application
- Time constraints - prevent performing certain activities or designing coverage
    - security testing challenge VM up for 1 hour was taking me more than that to scan the site


---

## I'm not looking to build a set of definitions

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
- Test Ability
   - No Results found
- Automatability
   - No Results found
- automatability
   - No Results found

---

## Wikipedia definitions

- Software Testability
    - repeats ISTQB defn
    - "is not an intrinsic property ... and can not be measured directly"
    - "is an extrinsic property which results from interdependency of the software to be tested and the test goals, test methods used, and test resources (i.e., the test context)" 
- Testability
    - for hypothesis testing
    - logical property such that counterexamples to the hypothesis are logically possible
    - The practical feasibility of observing a reproducible series of such counterexamples if they do exist
- Test Ability
    - Wikipedia does not have an article with this exact name
- Automatability
    - Wikipedia does not have an article with this exact name
- Maintainability
    -  the ease with which a product can be maintained _for a bunch of reasons_

- https://en.wikipedia.org/wiki/Software_testability
- https://en.wikipedia.org/wiki/Maintainability

---

# Technology TestAbility Audit

---

## Technology Influence on Testability

What would be easy to test? Mobile, Web, CLI, green screen?

- generate a list of technologies
- what ones are easy to test?
   - why?

---

## Exercise: Technology TestAbility is a set of Relationships

Between?


---

## Examples: Technology TestAbility is a set of Relationships

- Technology used - programming language, libraries, deployment process, hosting, servers OS, protocols
- Tools - manipulation, Interrogation, Observation
- Ease of Modelling
  - tools to visualise models
- Our understanding of the tools and technology
- Tools to hand vs tools available
- Time - setting up environments
- Access - how far we can go down into the technology


---

## Worked example - Zombie RestMud CLI text adventure game

Technology TestAbility Audit

- Java
   - JRE version?
   - Cross platform?
- CLI interface
   - Mobile?
   - Tool: Terminal used? Shell used?


Ease? Difficulties? Understanding?

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

## Exercise: Perform a Technology Testability Audit on Web Technology, Mobile Technology or a variety of application frameworks

- Work in groups
- Choose an application e.g. from http://eviltester.com/testability
- Conduct a Technology Testability Audit
   - Looking at the technology
   - What is it?
   - How testable is it?
   - How testable is it for you?
   - How testable is it for others?
   - What would make it more testable - from a technology perspective?
   - What makes it less testable - from a technology perspective?
   - Any risks?
   - Any Issues?

---

# Application Testability Audit

---

## Exercise: Application TestAbility is a set of Relationships

Between?

- features and Technology
- our understanding of the features
- where features are implemented in the stack

---

## A Hypothetical Web App - A Search Engine - Application Test Ability

Ease of which we can test an application

- auto completion using javascript, prevention of bots

---

# Automatability Audit

---

## What is Automatability?

- Automatizability

---

## Exercise: Automatizability is a set of Relationships

Between?

---

## Examples: Automatizability is a set of Relationships

Between:

- tools
- application features
- application technology
- tasks and activities
- what I as a tester need to 'do'
- Interaction, Manipulation, Observation
- Assertions - Interrogation
- Making it easy to do stuff

---

## Questions to ask to help audit?

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


## Worked Example - Zombie CLI

---

## Worked Exmaple - Protect the Square

---

# Test Ability and action plan to improve your ability to test



---

## Summary

- Think in terms of relationships
- This is not a formal Audit process
