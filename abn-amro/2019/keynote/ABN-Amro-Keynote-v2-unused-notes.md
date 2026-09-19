 The Test




Can we make the test the hero of this story?







# Why is automation thought of in terms of testing?

# How do we automate with code?

## What is Different about writing applications and writing automated execution code?

# Coding Applications vs Coding Execution




## Mocks, Stubs and Test Doubles

## Flexibility - Transformers vs Trucks

# How do some teams manage to successfully Mix APIs and GUI?

mixing API and GUI can be hard if you extend tests and write a framework.


# How do teams manage to create robust automation? Surely all automated execution is flakey

## Automated Execution must check at every step

# What are the most valuable abstractions found in Automated Execution?

# Why do some teams have slow running tests in their CI?

Your test wants to do a good job as often as possible.



They want to run and they want to run fast and they don't want to fall down.



Making tests robust and not flaky. CI.


# How does automating support testing rather than replace it?

## How can teams use automating to support exploratory testing?

### Supporting Exploratory Testing

## How does Exploratory Testing lead to automating?

### Exploratory Testing Supporting Automating

# Which SOLID principles are of most value when automating?

## SOLID

## Patterns Galore

## The Reflection Anti-Pattern

---



If I have to use reflection to bypass your Automated Execution eco-system to make it do the things I need it to do. Then there is something wrong with the Automated Execution Eco-System.


# How do some teams harness the BDD ecosystem for automating without confusing it with BDD?

## BDD

## Conversations, Not Testing, Not Automating

## BDD can support exploratory testing

## BDD Tooling can support automated execution

## BDD Tooling is actually a DSL creation system

### what is a DSL?

### what does a DSL look like?

# Why do teams spend time creating DSLs for their testing, instead of just using Cucumber?

## Fluent Interfaces

### Trainwreck - clean code quote

### avoidance by only returning 'this'

# How do teams manage their data and create data in time?

## seeding random data creation

## logging randomly created data

## objects to create data rather than canned text files

## random data can be overriden by specific data in tests

# Refactor And Abstract to migrate rather than rewrite

## JUnit 4 to Junit 5 migration example



 The End

# Beliefs and a Shared Reality

## We are making decisions

## Our abstractions model reality

## We agree

### it isn't what is universally best

### it is what works effectively for us in our context

### not rules but flexibility

### some abstractions support people who can't code well

## We do not have fixed beliefs

### beliefs change

### experiment with new realities and models

### do not commit too early

### do not commit to a one true truth in a way that you can't change

#### frameworks



# Why listen to me?

---



# Why listen to me?



---



# Why listen to me?



- I automate stuff

- I help other people automate stuff


# Testing

# Software Development Mysteries



- Do we need to test software in Agile?

- Do we need testers if our programmers are automating?

- _more questions_



One of the biggest mysteries in Software Development is why people ask questions like this


# What is a Test?

# What is a Test?



- Verb, Noun?

- Does it really exist?



We Test to answer questions like:



- How do we know we got it?

- Did we get anything else?



Testing is a process of investigation and asking questions of the system.



A Test is a specific question at a specific time.


# Testing is like Archeology

# Testing is like Archeology



People only want to know what you found.



- image of archeology, hunch, investigation, trial and error, careful analysis, piecing things together, years of translation, papyrus in a glass case



And they think some of the tools and technologies are cool.



- robots in the pyramids

- cosmic rays for pyramids





---



https://warwick.ac.uk/fac/arts/arthistory/research/visualresources/open/





https://www.flickr.com/search/?text=archeologist&license=2%2C3%2C4%2C5%2C6%2C9



Sabre wulf walkthrough



years of translation and decipher ment



https://www.britishmuseum.org/research/collection_online/search.aspx?searchText=tablet



ends up in a museum



https://unsplash.com/photos/35_O336NNOo



circle stone in top right hand corner?


# Who Automates?

# Who Automates?



* whoever has the skills

* if you don't have the skills then you need tools to help compensate for the missing skills


## Why have testers historically been the people automating?

# When to automate?

# When do we automate a Test?



Sometimes we ask the same questions and expect the same answer - we can often automate this.



Sometimes we only ever ask a question once. We probably don't automate this.



Sometimes we



Sometimes we ask questions and don't know what the answer is. We might automate the question, but not the analysis of the answer.



Sometimes we ask questions and we are more interested in how the questions is answered, than the answer itself.


# Automation Pyramid

# Automation Pyramid



Image of automation pyramid



_There is a Semiotics associated with this. We have to study and interpret this sign. This is a magical symbol, a Sigil that people show to ward off evil spirits or attempts to ask questions about their approach. How are you automating - show the magic talisman - question is gone._





# Fade to American great seal



https://en.wikipedia.org/wiki/Annuit_c%C5%93ptis



https://psmag.com/news/a-psychological-profile-of-conspiracy-theorists



"Give us an easy path and nod at our audacious undertakings."  Virgil, the Georgics. In line I.40



_We will explore the secret knowledge of this sigil and initiate you into the Mystery Tradition of the Automators_


# possible titles





Understanding Automating for Testing



The Test - Its environs, behaviour and evolution



Biography of a Test



The Mysteries of Software Development Revealed - The people, the processes



Secret Mysteries of Test Automation Revealed



Secret mysteries of automated execution




# notes





In terms of making it suitable for developers I can easily talk about programming an automating and patterns of abstraction for automating and how they are slightly different tha n those used in programming apps i.e. unit testing abstractions (avoid mocking webdriver & api), more flexibility and easier to extend, so a preference for aggregation and composition rather than inheritance. Mixing API and GUI. Supporting exploratory testing, not just CI. That kind of thing.



For non-techies - we need to cover the why

For techies we need to cover the how



The people story



Automating

*   why automat - what do you want to achieve?

* what is it for? assertions, supporting testing, monitoring, simulation (performance, stress)



What to automate?

Pyramids

* it is about coverage, not pyramids

* original white limestone coverage of 100% of the external of the pyramid

* but what about the inside of the pyramid

* it isn't about layers it is about the interfaces and the functionality

* http://www.scanpyramids.org/

* secret space in pyramid https://www.businessinsider.com/khufu-pyramid-big-room-chamber-void-muons-physics-2017-11?r=US&IR=T

* pyramid log book https://www.livescience.com/55439-ancient-logbook-on-great-pyramid-unveiled.html



Who automates?

* whoever has the skills

* if you dont' have hte skills then you need tools to help you avoid the skills





The story of the 'test' - Can we make the 'test code' the hero of this story?



how do we automate?

Abstractions

What is different about writing application code and automated execution code?



Mocks and stubs and Test Doubles

    - unit testing abstractions (avoid mocking webdriver & api),

Transformers vs Trucks

    - more flexibility and easier to extend,

    - so a preference for aggregation and composition rather than inheritance.

Mixing API and GUI.

Supporting exploratory testing, not just CI.

SOLID

BDD - conversations, BDD is not automated execution

BDD tooling can support automated execution



Remember:



Whats in it for me? Why should I care?



- Problem

- Cause

- Possible Solutions

- Chosen Solution



Ask questions, answer them, debate with yourself.




# pitch

programming and automating

and patterns of abstraction for automating

and how they are slightly different than those used in programming apps i.e. unit testing abstractions (avoid mocking webdriver & api), more flexibility and easier to extend,

so a preference for aggregation and composition rather than inheritance.

Mixing API and GUI. Supporting exploratory testing, not just CI.


# synchronisation with callbacks

---



# Synchronisation



- Callbacks


# failure handling

## reports errors?

## passes even though it failed?

## Test support automated execution typically does not do the following

### allows recovery?

### tries to heal?

# The cool process secrets

---



# Is Automated Execution the most popular part of the Software Development process?



---



Why is Automated Execution the most popular part of the Software Development process?



Because everyone wants to do it. It must be the most popular part.



We have automation everywhere.








# Secret Concepts

---



# Secret High Level Concepts of Automated Execution


# Why Automating?

## What is it for?

---



# What do we automate for? Not "Why?"



- What do we want?

    - Execution

    - Tasks, Activities

- How do we get it?

    - Tools, Libraries, Code

- How do we know?

    - Automated Assertions (CI, Testing) _(before)_

    - Simulation (performance, stress) _(future)_

    - Monitoring _(now)_










# Flexibility

# How do we test automated execution code? test it, use it

---



# What about mocks and tests for automated execution?








Do we test our automated execution code?





---



# Unit test the units





- Unit tests for 'units' and components in your code





---



# Mock it? Stub it? or Use It?



- Domain level interfaces for external systems i.e. only the functionality you use

- e.g. `ConfigFile` instead of `File`

- Mock the interface? or Test implementation?

- Mock the automation libraries?

    - e.g. WebDriver, HTTP Libraries




# Missing Concepts

---



- Flexibility

- Decisions

- Mixing levels

- Risk


# Testing vs Automating

---



# Testing vs Automating



- Testing : a process of investigation and asking questions of the system.

- Automating : a process of answering questions that we ask frequently, and with minimal variation.









Testing is a process of investigation and asking questions of the system.



Automating is Answering questions that we ask often with minimal variation.



When we vary the question a lot then we do testing instead.



We can vary with automation but, as I will cover later variation in automation still doesn't cover the same scope as testing.



So we'll look at some of the cool stuff. The automating stuff.


