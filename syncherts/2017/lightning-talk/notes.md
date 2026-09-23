* About me
* Key Idea - tactical and strategic are different - think of a continuum
* What is Tactical?
* What is strategic?
* People believe they are doing strategic when they are doing tactical
* It is possible to refactor from tactical to strategic
* how you know it is strategic

* 5 minutes max


Outline:

* About Me: 
    - Test Consultant, 
    - Written some books about Automating as part of test process
    - and you can find me at EvilTester.com

* Key Ideas
    - There is a difference between Automating Tactically and Strategically
    - Tactic - automate to solve a problem
    - Strategically - automate withing a bigger model of how we want to use this in the development approach.
    - Too many people think they are automating strategically, but fail because they are actually automating tactically.
    - Because you can have a strategy, that says we want to automate tactically if something takes too long automate it. 
    - I'm going to try and explain the difference so that you can look at what you are doing when you automate and see if it is strategic or tactical and if that is what you want.


* Tactical vs Strategic
    - Tactical 
         - to solve a particular problem
         - hopefully don't put too much effort into making a tool or finding a tool
         - often find the first tool that works
         - if we write code it doesn't have to be very good
         - we don't have to ask permission
         - we just get on and do it
         - flexible tools that allow scripting
    - Strategic
         - we want to roll out the tool to more people
         - we want to standardise the tool
         - we want to build abstraction layers to make it easier for everyone to contribute
         - we probably do need permission
         - we do need to schedule time in to automate
         - we commit time to automating

* People think they are doing strategic when they are actually tactical
    - very often this is the "if I do it more than 3 times then I automate it"
         - that's tactical, not a strategy and that is the points
    - possibly every team has a different approach
    - we have 'automated tests' as part of our definition of done, but we do that in the next sprint or we have a backlog to work through for tech debt
    - this isn't "Test automation" - it happens with dev as well
    - unit tests are not refactored
    - code coverage is not checked
    - we don't delete tests
    - we @Ignore failing tests
    - we have flaky intermittent builds

* It is possible to migrate from tactical to strategic


* Strategic done well
    - abstraction layers
    - reused for different purposes - exploratory testing, CI based testing, BDD style work
    - refactoring
    - good, production level code

* People fail with automating their software process when they treat something strategic with the same approaches as their tactical automating.



Stories

- working for a consultancy and we were building up a sustainable set of automated code and it was doing well and then we were told that we had to migrate to the client's 'framework'
- but that was a mess. It had a lot of inheritence so to use it meant changing a lot of code. We couldn't configure it as flexibly as our existing code so switching been environments was a pain. We couldn't run tests in parallel because it had too many static objects that were not threadsafe.
- but we also could not change it. This was essentially legacy code that had worked well on one project and then someone spent a lot of time pulling it out to make it a strategic and generic framework. But there was not 'strategy' for what it was supposed to achieve.

Things to look for:


It is possible to move from tactical to strategic - experience


    
* Automating vs Automation
    - I try very hard not to use the phrase "Test Automation" and indeed the word "Automation" because it is too vague. So I talk about Automating because then I have to be more explicit and say what we are automating, and it isn't "Test"
    - We automate tasks and activities because that makes our process more efficient, we might save time we might save money, it might cost more money but leads to more accurate results more quickly, etc. etc.


Sunk Cost - vs Investment