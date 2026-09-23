<!-- footer: @EvilTester -->
<!-- page_number: true -->

# Your Automated Execution Does Not Have to be Flaky

## Eurostar Webinars Feb 2018
## Alan Richardson

* [www.eviltester.com/flaky](http://www.eviltester.com/flaky)
* [www.compendiumdev.co.uk](http://www.compendiumdev.co.uk)
* [@eviltester](https://twitter.com/eviltester)

---

Have you experienced flaky test automation? In this webinar, Alan Richardson plans to convince you that you haven't. Instead you have experienced the result of not resolving the causes of Intermittent execution. Alan will explore some common causes and solutions of intermittent behaviour. Why? So you never say the phrase, "flaky tests", ever again.

---

# Flaky Test Automation is Normal

<!-- 

Have you experienced flaky test automation?

Particularly GUI Automation

Yeah. Of course. Its normal.

"Our Tests are Flaky", "Some tests fail Randomly"

 -->

---

# Flaky Test Automation is Normal

## Because we have normalized Flaky Test Automation

- "Our Tests are Flaky"
- "Some tests fail Randomly"


---

# "There is nothing so absurd that it has not been said by some philosopher."

Cicero, On Divination, Book II chapter LVIII, section 119 (44 BC)

# "Truth happens to an idea. It becomes true, is made true by events."

William James, Lecture VI, Pragmatism's Conception of Truth, Pragmatism: A New Name for Some Old Ways of Thinking (1907)

<!--

Its a nonsense IDea but people say. Constantly. Experts. People who know what they are doing. Its normal.

Flaky tests 'become' true becuase we write them. We don't learn the strategies to fix them so flaky is how we describe them.

-->

---

# How to Normalize Flaky Test Automation

We all know these Test Automation Truths

- "GUI Automation is Flaky"
- We have to live with 'flakiness'
- We shouldn't automate at the GUI
- We can only remove flakiness under the GUI

"Flaky Tests" blames the tests. Not good enough.

<!--

Have you accepted flakiness as the normal state of affairs?

Not flaky execution, not flaky environment, not flaky data. Flaky Tests.

Flaky tests is too high a level. Too high an abstraction to deal with the problem.

-->

---

# It isn't even the "Tests"

- We don't automate Tests
- We automate the execution of steps in a workflow or process
- We automate the execution of a System
- We add condition assertions during that execution

<!--
- We call that a "Test"
-->

We don't have flaky Tests - we have automated execution that fails. Sometimes on the steps, sometimes on the assertions.

---

# 'Flakiness' does not reside at a 'level'

I have seen 'flakiness'

- in Unit Tests
- in API Tests
- in Integration Tests
- in GUI Tests

---
 
# It is too easy to say 'flaky'

- and then blame 'GUI execution'
- and then blame 'the tool'

Living with flakiness is a choice.

**Choose a different approach.**

<!--

It is too easy to say 'flaky' and then blame 'GUI execution'. This is too easy an excuse.

It is too easy to say we have to live with 'flakiness' because we don't have an API.

-->

---

# I am not the only person saying this.

- _see references at the end and name drops throughout_ 
- try to cover something different in this talk


---

# Flaky?

- adj: Breaking or separating easily into flakes.
- adj: Liable to act in an unconventional or eccentric way.
- adj: (of a device or software) prone to break down; unreliable.

https://en.oxforddictionaries.com/definition/flaky

## Eccentric? Unconventional? But in the world of Test Automation it is normal.

<!-- 

But in the world of Test Automation it is normal.

Why would we accept that?

Flaky is a bit, ooh, a bit quirky, a bit off, a bit unusual. But acceptable.

We need to make it unacceptable.

-->


---

## "We designed that flakiness. We are allowing that to happen. We engineered it to be that way. And its our fault that that exists."

Richard Bradshaw, "Your Tests aren't Flaky, You Are!" Selenium Conference 2017

https://www.youtube.com/watch?v=XnkWkrbzMh0


---

# Take it more seriously. Describe it differently.

## Intermittent

- Occurring at irregular intervals; not continuous or steady.

https://en.oxforddictionaries.com/definition/intermittent

<!--

something is happening, but not all the time

that makes me think there is a cause that we haven't identified

there is some factor in the system that I don't know about

"Flaky" doesn't do that

-->

---

# Take it more seriously. Describe it differently.

## Nondeterministic Algorithm

"a nondeterministic algorithm is an algorithm that, even for the same input, can exhibit different behaviors on different runs"

- https://en.wikipedia.org/wiki/Nondeterministic_algorithm

<!--

That doesn't sound like how we describe 'automation'.

That's not what we want.

-->

---

# Flaky is not serious enough.

## We do not want to use nondeterministic algorithms for continuous assertions that we are relying on

<!--

We are trying to rely on this. Continuous Integration. Continuous Deployment. We need this to run reliably. We need to trust that pass means everything ran as expected.

remove the word 'flakiness' from your vocabulary -->

---

# Your Test Automation is not Flaky

## Your automated execution fails intermittently

<!--

You have experienced intermittent failures.  You have chosen to live with them, you haven't fixed the causes of intermittent failure. 

-->


---

# Don't Blame Tests. Look For Root Causes.

_watch Alister Scott's GTAC 2015 talk_

---

## I have removed 'flakiness'

- from Unit Tests
- from API Tests
- from Integration Tests
- from GUI Tests

Automated execution does not have to fail intermittently.


---

# How to remove Intermittent Failure from your Automated Execution

1) Care
2) Investigate
3) Do something about it 

---

# How to remove Intermittent Failure from your Automated Execution

1) Decide Intermittent Failure is unacceptable
2) Investigate the cause of Intermittent Failure
3) Mitigate
    - Remove the cause
       - actually fix it
    - Implement a retry strategy
       - might obscure bugs
    - Accept Intermittent Results
       - might provide hints at solutions

<!-- 

Obvious thing to do is remove the cause. But this can be hard.

You might try a retry strategy. This can hide problems. But if you your system exhibits intermittent failure to users in live then you might have to do this. Because that is what users do in live. i.e. the problem might not be your execution, it might be your system.

Alister Scott talks about retry strategies obscuring bugs.

Accept intermittent results. You might move everything that is failing intermittently into a test run of its own. This creates a 'good' execution pack, and a 'bad' intermittent pack. You isolate the failures until you can work on them. If you find that you keep moving things into the intermittent pack, then you need to rethink the mitigation strategy because eventually the pack will get larger and you haven't done anything about the root causes.

-->

---

# Take it seriously

We write Automate Assertion checking because we care that those assertions are true for each build of the system.

Determinism is important.

---

# High Level Grouping of Common Causes of Intermittency

- Synchronisation - lack of or poor
- Parallel Execution - interference
- Long Running Tests - too long, too risky
- Automatability - hard to automate system
- Tools - inappropriate or out of date
- State Preconditions - not controlled
- Assertions - wrong or incorrect assumptions
- Data - not controlled

_see also Richard Bradshaw and Mark Winteringham "SACRED" Mnemonic._

<!-- Splat Sad -->

---

# Common Cause - Synchronisation

- None
- Time Based Synchronisation
- Not Enough Synchronisation
- Hard to Construct Locators
- Uncontrolled Locator Dependencies
- Incorrect App State Synchronisation
- Relying on Framework Synchronisation

<!--

- None

Like a Rhino in a Chocolate Shop. Charging through everything.

Remote Cloud Execution might improve things because of latency.

- Time Based Synchronisation

implicit waits - everything waits, which can slow down error reporting

worse, thread.sleep()

Wait for 10 seconds.

But all sync is time based... timeouts. But these can be domain specific and can assert SLAs, adjusted for remote latency or environment conditions.

Ideally we want state and domain synchronisation.

- Not Enough Synchronisation

wait for one initial app state, but not follow on intermediate states

displayed, but not clickable or ready to use

No intermediate states.

Remote latency can be an issue if we do put in more synchronisation becuase each call is slowdown. So we might need to adjust the synchronisation for different environments and execution approaches.


- Hard to Construct Locators

It might be too hard to synchronise on certain parts of the page. So people just don't.

'Locators' be ben generalised into - condition I Want to synchronise on. DB state etc. Not just web page locators.

- Uncontrolled Locator Dependencies

Randomly generated IDs, random class names. Automatability aspect. We need to control our application.


- Incorrect App State Synchronisation

e.g. wait for 'ajax' image to go away, rather than Ajax call to complete processing

Naive app state identification e.g. "Page footer present means page is ready to work with"

- Relying on Framework Synchronisation

e.g. Protractor for Angular Sync

Our app is not the framework. Synchronisation is about state as well as technology.

-->

---

# Common Solutions - Synchronisation

- Synchronise on States
- Multiple Intermediate States
    - Consider Latency 
- Synchronise in Abstractions not the `@Test` methods
    - unless `@Test` specific 

---

# Common Cause - Parallel Execution

- Framework not thread safe
- Tests Interfere
- Shared Test Environment


<!--

People often jump into Parallel Execution too soon.

- Framework not thread safe

People build Frameworks, which control how they work. Often heavy on inheritence, Single instantiated control objects, shared global state and variables. All stuff that makes parallelism hard.

Test Frameworks might be thread safe, but our abstractions often are not.

May need to fork rather than thread e.g. different suites

- Tests Interfere

System state preconditions changed by other tests running in parallel

Shared data can cause interference. Browsers. System processes. System responding to one request.

Might even be bugs in the system.

Shared browser usage.

- Shared Test Environment

Not just shared for automated execution - data controls can help with this.

But shared across different teams, Exploratory testing going on in the same environment as automated execution, CI, performance testing

-->

---

# Common Solutions - Parallel Execution

- Independent environments
- Independent Data
- Separate Suites rather than threaded execution
- Create Threadsafe, reusable code
  - Create reusable library abstractions rather than Frameworks
  - Avoid 'static' singleton objects

---

# Common Cause - Long Running Tests

- Sequential rather than Model Based
- preconditions, process, assertion
- components tests in flow rather than isolation
- preconditions, process, assertion, preconditions, process, assertion
- duplicated assertions
- unnecessary processes included in success evaluation

<!--

- Sequential rather than Model Based

Model based has a lot of synchronisation built in. Particularly if it is state transition based because State transitions have guard conditions or entry conditions. Synch should be baked into model based execution pretty well.

Model based usually has some variety handling.

Sequential doesn't have a lot of variety. It can't handle pop-ups, A/B tests.

Short flows are usually easier to make reliable.

- preconditions, process, assertion

We want to:

- setup the preconditions we need
- carry out a process
- assert on the conditions we want to check

Make 'precondition' setup part of the test.

Too long a 'process' i.e. the stuff you do in the execution might leave you at risk of overlap, or too long to setup.

Too many assertions can slow things down, overlap with other processes, timing of assertions might be hard. Sync on assertion checking.

- components tests in flow rather than isolation

Very often we think we need to assert on all conditions in a full executable flow - login through GUI, navigate here, setup data in GUI, do something. Check in GUI.

It is possible to assert on GUI rendering and some functionality in isolated playgrounds. Particularly if we design the system to operate as components. e.g. good for React and other JavaScript MVC fameworks


- preconditions, process, assertion, preconditions, process, assertion

doing too much in a test

chaining tests and creating dependencies between tests

* unless model based execution, then try to do precondition, process, assertion 
  * if your precondition is a process then synchronisation is important 
  * we care about the -end result of preconditions, not 'how' precondition is setup

Mark Winterinham covers this in his recent Selenium Conference talk.


- duplicated assertions

It might make you feel safer to continually assert on GUI rendering, footer display etc.

assertions might require synchronisation and timing and messages and latency

But this can leave you vulnerable to synchronisation issues - some functionality you can assert on result without waiting for full page to render. If you do this it can make your execution more robust and faster.


- unnecessary processes included in success evaluation

Richard Bradshaw covered this in his Selenium talk - but if you collate a lot of information as part of your test for reporting, or you are waiting for processes to complete, as part of your 'did this flow work' then you might have failures that aren't even reported as assertions, just exceptions. Be clear on assertions being different than teardown. Some teardown might be 'nice to have' rather than essential. e.g. Delete temp files.

shutting down environment connections, environments, reporting, etc.


-->

---

# Common Solutions - Long Running Tests

- Understand that more actions == more risk
- Synchronise prior to each step
- Consider Model Based Testing
- Create component test and auomated execution playgrounds
- Minimum assertions

---

# Common Cause - Automatability, Automatizability

- not Testability
- Application has nondeterministic behaviour
- Hard to Synchronise
- Application fails non-deterministically in live

<!--

- not Testability

Some people refer to this as 'testability', but it isn't. I can often easily test an app that I find hard to automate.

- Application has nondeterministic behaviour

JavaScript Callbacks trigger 'random' popups

Async and out of order processing

A/B Testing in app

External 'stuff' not related to core functionality
e.g. ads, libraries, rendering

_Alister Scott covers this in his GTAC 2015_

- Hard to Synchronise

JavaScript frameworks. Many DOM updates

e.g. Queued messages (guaranteed), buffered processes, promises.

- Application fails non-deterministically in live

Saw this at a client recently - every team was reporting flaky tests - GUI, API, Components, Backend, Low level stuff. Every team.

Intermittent Application Architecture - the application is intermittent in live, by design.

Not even 'bugs' just  known to be a 'flaky' app at times, and user just presses button again.

you can't expect to have deterministic automated execution if your underlying application is non-deterministic.

-->

---

# Common Solutions - Automatability, Automatizability

- Build apps that can be automated
- Non-Deterministic apps need step retry strategies rather than test retry strategies

---

# Common Cause - Tools


- Out of Date
- Inappropriate
- Local Tool Infrastructure
- Remote Latency
- Risks with Tool Interaction

<!-- 
- Out of Date

out of date language bindings

out of date drivers and APIs

- Inappropriate

using the wrong tool for the wrong job, e.g. use WebDriver to automate a GUI that sends HTTP REST API methods, instead of automating the HTTP REST API

- Local Tool Infrastructure

environment performing automated updates

e.g. browsers automatically update rather than controlled to match the driver versions

e.g. maintaining a local grid or tool environment

environment not maintained

environment not up all the time

environment out of date


- Remote Latency


Additional latency introduced when using a remote cloud grid system.

Timeouts may not have taken this into account.

Approach to testing may use a lot of assertions which result in HTTP communication rather than trying to cache data and use locally.

Automated Execution works locally. But fails remotely. Can be hard to debug.

- Risks with Tool Interaction

Some tools have a general risk because they are controlling other tools e.g. WebDriver has to start a browser - what if the browser doesn't start, or doesn't close down properly?

-->

---

# Common Solutions - Tools

- Use the right tool for the job
- Keep your tooling environment controlled and up to date
- Change your approach to take latency into account
    - process on server return results
    - return source, process on execution client
- Might have to accept tooling risks
    - cloud vendors might help mitigate
    
    

---

# Common Cause - State Preconditions

- Not Checking State Preconditions at start of test
- Not controlling state preconditions prior to test
- Dependencies between tests
- Precondition setup using same tool


<!--

- Not Checking State Preconditions at start of test

We want to fail fast and at the appropriate point.

We don't want to 'do something' that may or may not pass. We want to make sure it can pass. And report if it can't.

- Not controlling state preconditions prior to test

To the best of your ability make it so that your execution can pass. Setup what you need. Lock what you need. Book what you need.

- Dependencies between tests

People use Tests as setup for other Tests. This is why people tend to like TestNG - because of easy dependency creation.

* What if dependency is not maintained?
* What if previous test becomes intermittent?
* What if the 'tear down' process changes and the test is left in a different state?
* what if the previous test changes and the app state is not the same?

- Precondition setup using same tool

e.g. GUI automated execution has state setup using GUI automated execution

_Mark Winteringham Selenium Conf talk_

-->

---

# Common Solutions - State Preconditions

- control data
- precondition state setup - whatever works
   - http, db, api - 'hack it in'
- avoid dependencies between execution unless a long running test 

<!--

Use abstraction layers to create the dependencies rather than rely on other tests.

-->

---

# Common Cause - Assumptions Encoded in Assertions

- Assert on an Ordered Set
- Assert on Uncontrolled Data
- Assertion Tolerences

<!--

- Assert on an Ordered Set

multiple data items, asserted in non-guaranteed order e.g. {1,2,3}

sometimes {3,2,1}, sometimes {2, 1, 3} but we always assert on an ordered set {1,2,3}

instead assert on 'includes' and 'length'

{S}-union-{1}=={1}, {S}-union-{2}=={2}, {S}-union-{3}=={3}, |S| == 3

Need to make sure assertions don't allow duplicates or extras to slip through.

- Assert on Uncontrolled Data

assert on 'stuff' not important to test

This might also arise from duplicated assertions.

- Assertion Tolerences

assertion tolerances not expansive e.g. amended time not within 3 seconds (operation took longer than expected), amended time == created time (because scale used is milliseconds instead of nanoseconds i.e. not enough to make distinction)

-->

---

# Common Solutions - Assumptions Encoded in Assertions

- Logging so you can interogate failure afterwards
- Ability to re-run tests with same data and setup


---

# Common Cause - Data

- Missing Data
- Data not as expected
- Externally controlled data
- Uncontrolled Data


<!--

Data issues are pretty easy to spot, and pretty easy to avoid. But are all too common, particularly when we view the data as too hard to setup, because of complicated conditions, or dates, or amount of transaction data.

- Missing Data
- Data not as expected
- Externally controlled data

* Static data
* Hard-coded data

- Uncontrolled Data

* Live Data
* Randomly Generated Data

A lot of this comes down to the system design and programming notion of "Avoid Global State" or "Avoid Shared State" "Avoid Global Variables"

-->

---

# Common Solutions - Data

- Create data for each test
- Avoid test dependencies
- Avoid re-using data between tests
- Check data as a precondition
- Data synchronisation on all precondition data

---

# Summary

- Your Test Execution is not 'flaky', it is failing intermittently
- It is possible to remove intermittent failures, even when automating through a GUI
- Commons solutions: synchronisation, data control, environmental isolation

---

# Other talks to watch

- Alister Scott, GTAC 2015: Your Tests Aren't Flaky
    - https://www.youtube.com/watch?v=hmk1h40shaE

- Richard Bradshaw, "Your Tests aren't Flaky, You Are!" Selenium Conference 2017
    - https://www.youtube.com/watch?v=XnkWkrbzMh0

---

# Other talks to watch

- Craig Schwarzwald, SAY GOODBYE TO THE “F” WORD … FLAKY NO MORE!
    - https://www.youtube.com/watch?v=2K2M7s_Ups0

- Mark Winteringham - REST APIs and WebDriver: In Perfect Harmony
    - https://www.youtube.com/watch?v=ugAlCZBMOvM


Search also for: [Flaky Selenium](https://www.youtube.com/results?search_query=flaky+selenium), [Flaky Automation](https://www.youtube.com/results?search_query=flaky+automation), [Flaky Test Automation](https://www.youtube.com/results?search_query=flaky+test+automation)

---

# End

Alan Richardson [www.compendiumdev.co.uk](http://www.compendiumdev.co.uk)

- Linkedin - [@eviltester](https://uk.linkedin.com/in/eviltester)
- Twitter - [@eviltester](https://twitter.com/eviltester)
- Instagram - [@eviltester](https://www.instagram.com/eviltester)
- Facebook - [@eviltester](https://facebook.com/eviltester/)
- Youtube - [EvilTesterVideos](https://www.youtube.com/user/EviltesterVideos)
- Pinterest - [@eviltester](https://uk.pinterest.com/eviltester/)
- Github - [@eviltester](https://github.com/eviltester/)
- Slideshare - [@eviltester](http://www.slideshare.net/eviltester)

---

# BIO
 
Alan is a Software Development and Testing Coach/Consultant who enjoys testing at a technical level using techniques from psychotherapy and computer science. In his spare time Alan is currently programming a [Twitter client called ChatterScan](https://chatterscan.com), and [multi-user text adventure game](http://compendiumdev.co.uk/page/restmud). Alan is the author of the books "[Dear Evil Tester](http://www.eviltester.com/page/dearEvilTester/)", "[Java For Testers](http://javafortesters.com/page/about/)" and "[Automating and Testing a REST API](http://compendiumdev.co.uk/page/tracksrestapibook)". Alan's main website is [compendiumdev.co.uk](http://compendiumdev.co.uk) and he blogs at [blog.eviltester.com](http://blog.eviltester.com)