# Questions and Answers — Lessons Learned When Automating

## What happens when you get to have too many abstraction layers?

Speaker 1:  Hi. Can you hear me?

Alan:   Yes, I can.

Speaker 1:  I have a question. What happens when you get to have too many abstraction layers? For example, you have to implement BDD with something like page objects and then also have some layers regarding ... Separate the API testing from the GUI testing, so on? Doesn't that get too hard to maintain? For so many layers?

Alan:   I think some people believe that it does. You mentioned BDD, so the Cucumber layer whatever BDD tool we're doing.

I use the BDD layer as a domain specific language for making it easy for me to write English language code.

That BDD layer is going to use the other abstractions to do its work because I'm not going to rely on the BDD layer as being the only way I execute the code.

Now, this can become ... This seems to be harder in dynamic languages rather than static languages. If you're using something like Ruby or Python because of the way that those languages work, people can get lost in the abstraction layers.

It doesn't happen so much in the static languages like C Sharp and Java because in your codes you click through, you're in the right place, you're jumping around the IDE very easily.

I tend not to worry about that, to be honest, simply because we are automating at the level that we're trying to mitigate the risk.

If we're focused on the API, we're mainly going to be using the API abstractions.

If our BDD code is mainly using the API, it's mainly going to be interacting with the API stuff.

If it's using them all, chances are it's a smaller subset of code that is using all those parts and should hopefully be easy enough to work through.

I know that some people find that as a problem, but I don't really find it as a problem.

I think it becomes a problem if the APIs are not clean enough and not necessarily separated enough.

Maybe it's time to, if they get really big, start splitting the abstraction layers into separate libraries so that the implementation details are hidden and you just know you're using the REST library and you've got high level interface for that.

## What do I mean by synchronization?

Speaker 3:  What do you exactly mean by that?

Alan:   Synchronization, what do I mean by synchronization?

Speaker 3:  Yeah. I mean more or less.

Alan:   Okay. It is things like the waiting for elements on pages.

It's pretty much anything.

What I like tests to do is synchronize on application state.

If we're logging in, then don't go any further down the path until the application has all the information on that basically says you have logged in. The AJAX queries have stopped running and you synchronize on the state, then you can reliably move forward. It might also be at the API level.

If you issued an API request and the system has to process that and it does it with a background job, then you need to wait until a particular entity that you're interacting with is in a specific state and you might only know that by polling the database.

That too is synchronization.

For me, synchronization is that generic term for waiting until the application is in a particular state before you carry on.

## How do you handle large volumes of data

Speaker 3:  How do you handle large volumes of data

Alan:   Okay. Is that high volumes of data or high volumes of load on systems?

Speaker 3:  I'm think about high volumes of data.

Alan:   Okay. High volumes of data can be hard sometimes when the data is in set different states and you need the application to process it to get it in different states.

In which case, sometimes what you have to do are take snapshots of the database and then plunk them back in again because it takes too long to set the data.

Otherwise, using tools like JMeter to feed in lots of requests to get your data in the right state or just bulk loading the data into the database.

Very often, the hard part is the referential integrity within the data, but that's a modeling problem.

I think there's no easy answers for it. It's pretty much just ... We'd have to know more about the context that you're working in and the problems that face to do it.

The easiest route is to just take snapshots of databases and then restore them with all the data that's in place.

## Have you heard about Appium?

Speaker 3:  All right. Now, have you heard about Appium? I was wondering if you'd heard about it and what ...

Alan:   Okay, so Appium is the mobile implementation of WebDriver. At the moment, that is my hope that it gets better and improved to make the mobile automation easily accessible.

At the moment, that is the tool that I use for mobile automation because I haven't found anything better, as a generic tool.

Sometimes some of the companies I work for, we need to drop down to Frank on iOS because that's more appropriate.

It's pretty much Frank or Appium.

What I like about Appium is you don't have to instrument the application.

If you're used to WebDriver and you're coding against the remote WebDriver, Appium is fairly easy to pick up.

Speaker 3:  The learning curve is smaller.

## You don't like frameworks, what else do you use?

Speaker 4:  Okay, can you hear me?

Alan:   Yep.

Speaker 4:  You said at some point that you don't like to create or use frameworks and I was wondering what else do you use? With every project that I worked on till now, there was a framework with page objects or another model and it wasn't very clear what is the other option that you have?

Alan:   Yeah, so the one difference there is I don't call a set of page objects a framework.

For me, a set of page objects is a library.

If there is a set of factories I have to use to bring up the page objects, if I have to annotate my code in order to use those page objects, it depends what controls are put in place around those page objects and that might make it a framework.

What I like is just a code library where I can say instantiate a new version of this, use it, bring it to this place.

Frameworks, in my mind, impose more controls on how I have to write my code.

A set of page objects in a library is just something that I can use, so it's maybe just a word usage and definition.

By frameworks, I would mean something like Serenity or Cucumber, those are frameworks. I tend to use Cucumber as a DSL rather than an execution framework.

Speaker 4:  I was thinking more of frameworks like you have the logic, and then you have your classes. That was the framework in my idea.

Alan:   I wouldn't class that as a framework. That, to me, is just a set of objects. We can package that up as a library. That, to me, is a good thing.

Speaker 4:  Okay, so we just have different ideas about frameworks.

Alan:   Just different words. For me, a framework is something that exerts more control over my coding than I would like.

Speaker 4:  Okay. Thank you.

## Is there another or better solution than page objects?

Speaker 5:  I also have a question, Alan, if you can hear me.

Alan:   Yeah.

Speaker 5:  You were talking about page objects as a library and do you think or do you know, is there another, let's say improvement of this concept or is there another, better solution around these page objects? or how do you find it maybe, not only right now, but also in the future?

Alan:   Page objects, I think, is a loaded term, it's an ambiguous term.

I use page objects just to refer to a physical abstraction. I would rather think in terms of abstractions.

I know that I am modeling the GUI of the application and that is typically what we call page objects.

Because I know I'm modeling the GUI, I don't necessarily have to model it as a set of pages.

I could model it as a set of components, as a set of actions that user does, I could model it as high level objects that do things to the system.

This is something that I explored in more depth in a talk that I did last year, which is available on my Selenium Simplified website called "Page Objects and Beyond".

Because it is a big topic. How do you model the physical abstractions and I do explore different ways in that talk of doing it, so it might be worth having a look at that.

## How can we help ourselves and the community improve?

We can help ourselves by learning more and practicing more. We can help the community by telling people what we're learning, what we're doing, what has working, what has not worked.

We can do that through blogs and talks or wherever else. The important thing for ourselves is to experiment more.

Last week, I was looking through all the different browsers to see how they've changed and I could then see that Firefox, now in the View Source tells me basic syntax errors, which the other browsers don't do.

I know that I can use Firefox for a quick win where I can't use the other browsers.

That was just me spending an hour going through all the different browsers to be more familiar with the tool set that they now offer and just trying to learn as much as possible.

## If I am a good enough coder why would I want to stick to testing rather than developing?

Speaker 6:  Can you hear me?

Alan:   I can now, yes.

Speaker 6:  Okay, okay. Thank you. Most of the references that you offered were about coding and I'm not really sure it's in the UK, but if I'm a good enough coder or developer, why do I want to stick in testing and not turn into a developer?

Alan:   Sometimes you've got no choice, right? Because you're a tester and no one will hire a tester to do programming.

Sometimes, if you prefer programming and you're in a good environment, you might have the option to swap over.

The reason that I stay in testing, even though I'm fairly good at coding and it's the reason why I got into testing in the first place, is that testing gives me the ability to do programming, learn lots of different libraries, tackle different technologies, and explore applications, and implement models and interpreters for those models.

I'm not just focused on the building of an application and the implementation of requirements, I'm focused on an ecosystem of trying to make something work, and trying to identify different ways of pointing out feedback and information in that environment.

I think it's down to personal preferences and the benefit is if you're good at coding and you have the potential to go into development, then the world is open to you and you'll be just such a massively valuable team member who can work really close with the development team.

You can do the unit testing, you can contribute to the production code, you can help build automated code that will explore the application longer term.

It gives you the options.

Even under those circumstances, I would probably stay in testing unless the organization was so bad that testing was undervalued and the only people that were valued were development. In which case, I would ease my way into development and still would do testing.

Speaker 6:  Thank you. I think this is why I also stick in testing. I think it was good to hear, but everything that you said cleared it up, right now. Thank you.

## What do you think about using SoapUI or Page Objects?

Speaker 7:  Hi.

Alan:   Hi.

Speaker 7:  I have a question regarding what service is best. What do you think about augmenting tests or the using page objects versus using SoapUI?

Alan:   Okay. I haven't used SoapUI a lot. Every time we have used SoapUI, we've used it to start because the API wasn't particularly well defined and we were using it to help our manual testing.

I always got to the point where instead of using SoapUI and building code in SoapUI, we would build our own abstraction layers that just used HTTP libraries or Rest Assured or some other HTTP library that was doing JSON or XML on top.

Because then we had more flexibility.

SoapUI is very good, but because we were doing automation, we owned the code so we tended to build our own abstractions and interfaces rather than SoapUI.

I think it depends on how much money your company's got, whether you're prepared to pay for the SoapUI's pro libraries and on the skill sets of the testers.

Because we were able to use our own abstraction layers on the web services to support our exploratory testing more effectively than the SoapUI GUI was able to help us.

## Our framework is too big and hard to maintain - why?

Speaker 8:  Hello there. I had another question. Do you think all these frameworks, all these ... automating testing with all these frameworks, butI was on a project it uses a custom piece framework of python to automate tests really easily. The project itself is really complex. It's so big that we need about 100 people just to test it. Do you think this help us just because we're trying to cut down on cost? Does it happen because it actually in some projects use of this framework? Use the framework instead of using the code.

Alan:   Sometimes you face the issue that building a good set of abstractions for automating applications is hard.

There's the question that you're on about you have all these abstractions but on top of other abstractions and you get lost in them.

It's hard to build a good set of libraries that are decomposed at different levels to make it understandable and easy to use.

If you've got a big system with lots of moving parts and you've got lots of abstractions in place, it's hard to model that effectively such that you get the value from the automation and from the automating, and don't just throw lots of people at it, and don't have continually maintenance over the top.


Speaker 8:  Eventually, the issue we'll be facing because all the automation, all the thousands of lines of code are starting to be worthless so that's something that the company has tried to work on. I am thinking of composing anything down from frameworks. Learn how to automate using the source code itself.

Alan:   Taking control over it is generally a good idea.

Refactoring continually is a good idea.

Because what we're building are models of another application.

That's what I think of as abstractions, they're just models.

I don't know exactly what your frameworks are built in, I don't know what they're using. Very often people use keyword driven techniques, which can be hard and lead to just huge sets of keywords with no overriding abstraction and no way of generalizing it.

If you change to code, you can to continually refactor it because the models have to be updated and you have to keep a tight rein on it.

If you've got something that works, but is unmaintanable, you might be able to start by building small abstractions on top of what you've already got.

Because remember when we started with Selenium RC and WebDriver, we built a tool abstraction. We built something controllable that delegated to the existing test code that we had to make it more maintainable and usable for us. That might be one way of starting without trying to throw everything away and start from scratch, which can take a long time. You might be better off doing that, I don't know.

## Aren't we building a framework anyway?

Speaker 9:  ... Basically, I'm just building on our project based frameworks, just adding layers and layers of abstractions and libraries can add up and lead us to a framework anyway.

Alan:   I'm building lots of abstractions and abstractions are built on other abstractions to model the application, right? I'm building abstractions to model the physical world. I build abstractions that model the logical world, so entities like customer or user, these become abstraction layers which I use.

The question is do you know this, does it lead to us building a framework in the end anyway?

In my mind, it doesn't lead us to building a framework unless all the libraries have to be controlled in a certain way.

Some people make you have to have your tests extend some sort of generic test class that pulls in all your libraries and sets up all the conditions.

At that point, it's a framework.

That's what I try and avoid. I will have all the libraries, but I try not to force people to use them in a certain way. If I do force people to use them in a certain way, I will always let them access them directly because I desperately want to avoid frameworks.

## Have you used any frameworks like Cucumber?

Speaker 10: Okay, regarding frameworks. Do you ever use one, like you mentioned setting up Cucumber?

Alan:   I've used Cucumber and I've used FitNesse, and whilst I think they are frameworks, my model of them is a domain specific language implementation.

What I'm using them for is to build a domain specific language and what I do is in the step definitions, I will reuse the libraries I have, that way I'm not tied in to Cucumber or FitNesse as the only way that I have for executing things.

That's my main concern with a domain specific language based framework, that that becomes the only thing that we write executable code in. I want the ability to write a JUnit test and a FitNesse test or a JUnit test and a Cucumber scenario.

Speaker 10: In that case, how do you report your results? Are they inside or something else?

Alan:   Most of the time, when we're reporting our results, nobody cares so it doesn't matter.

JUnit does kick out reports and if we train people to read them, that's good enough. If the JUnit reports don't meet the customer need, then we figure out a way of reporting using the tools that we have.

I might start using annotations to help me do the reporting. I might start using log messages to help me do the reporting.

## What about synchronisation based on special code for testing?

How do you think about synchronization done through automation with time verification versus event driven from the product? E.G., linked in builds in the code events for verifications and they take those out when they put it in production?

Okay, so this was one of the things that we skipped, in terms of sometimes to make an application testable or easy to execute, we have two versions of it. We have a version that is very easy to check the results in and execute, which is the linked in event, one of which exposes all the events and makes it easy for us to check.

Then when we take those out for production, we potentially have a risk. Because we now have a different codebase going into production that we haven't fully tested.

We have a choice.

We can mitigate that risk by understanding the extent of the code that's been removed and running a smaller set of GUI based automation that doesn't synchronize at such a low level, but only synchronize on the GUI display.

It might be a little bit more brittle and it might also be a little bit slower, but it's a smaller subset so it's easier to manage.

We do do things like that.

What we have to be careful around is just understanding the risk that we introduce with the processes we do and then add mitigating steps to help us.

## Should we wait until system is stable before automating?

Speaker 11: I have a question regarding automating test, automated testing in general. When you start a new project and a lot of things change in a short time, do you think that you have to postpone automation until you have a stable version and go with the manual testing? Or do you think it's better to automating tests and maintain them basically the same things over and over again in order to have a working automated test?

Alan:   If something is changing a lot, you've got the issue that you spent a lot of time re-testing the same things manually. It's in those specific instances that we do want to automate.

The hard part then is knowing what areas of the application to automate.

I've automated an application that was changing constantly.

What we did is we picked a subset of paths through the application and just hit it with massive amounts of data variation. That was where we got the benefit from the automation. We also put abstraction layers in.

Because sometimes when you look at the change that happens in applications, at one level of abstraction there's no change.

Say you modeled a user and the path through the application was user registers, logs in, enters their details, buys product X, checks their balance.

That abstraction probably doesn't change.

The abstraction that changes is one underneath it that implements the physical mapping.

If we split the abstractions correctly and they're done in terms of trying to minimize the amount of change we experience, then you might be able to automate early.

The whole point of using tools like Cucumber and FitNesse, the main idea is that there's one level of abstraction that stays the same and a lower level of abstraction that changes, so you're not maintaining everything.

You might be able to do it that way.

Speaker 11: You will have to learn this technique [inaudible 00:26:31] an argument?

Alan:   I would always do both. I will always be testing it interactively, but I will try and automate to try and get quick coverage or to try and have the parts that are stable exposed to more data variation so that we can then focus our manual efforts on other parts that might be changing a lot.

## Should we run our test on different browsers?

Speaker 11: I have one more question. It's about running the test on different browsers. If you have a set of tests and you run them on different browsers, they validate the user interface, they will do just a set of checks. Do you see any value running them on different browsers?

Alan:   A lot of people will run all their test paths on every browser because they don't necessarily know what the risks are of running the application on different browsers.

If you have a very simple application that doesn't use any JavaScript, you're probably not getting any benefit by running the tests on different browsers because it's simple enough that there's no risk.

If you're using a lot of JavaScript in your application, then there's a reason for running the test cross browser, but we might get the same benefit by running all the JavaScript unit tests on all the different browsers.

Because very often what happens is your development team are writing JavaScript, they're writing a lot of JavaScript there, using NodeJS they're running the JavaScript unit tests under NodeJS on a headless browser. If you then run the JavaScript unit tests on real browsers, then you're testing the JavaScript cross browser and that might be helping to mitigate the risk and then cut down on the amount of browsers that you do for GUI automation.

It should always be a risk based process and it's not just a business risk, sometimes it's what technical risk are we testing or checking for with this execution path?

Speaker 12: What's the worst bug you missed in production because of automated testing?

Alan:   What's the worst bug that we missed in production? There was a follow one of why was it because of something?

Speaker 12: Because you relied to much on automation

Alan:   Okay, so there's two. We have one bug that went into production that was because we had a huge reliance on automated execution and minimal reliance on the manual testing.

It was right in the innards in a tiny little edge case on a particular scenario that we had never covered that through routine manual testing as part of our process.

We didn't have that covered in the automated execution and there was so much automated execution that we found it very hard to review for coverage.

We've also missed bugs simply because of late changes when we had no automation, that we didn't catch it with the manual testing.

I used to work at Channel 4, we used to work on the Big Brother program. We went live with the Big Brother website, which gets a lot of traffic, and at the last minute we added in a JavaScript call for logistics and checking where people were on the site and it basically brought the site down because it was too many calls on the site.

That wasn't the internet environment, we wouldn't have found that through manual testing, we probably wouldn't have caught that with automated testing.

You will miss something, pretty much guaranteed. It's about how you respond to failures and whether your process lets you respond to defects in production fast and get something else out there quickly.


## When is it best to use BDD?

Speaker 13: Since you've talked about BDD, I want to know your opinion about when it's best to use it when is it effective?

Alan:   Okay. When it's best to use it, I don't know.

Simply because I've worked on Agile projects that it wouldn't not have helped with the communication, because the communication was bad enough as it was.

I've worked on projects where it has been incredibly beneficial simply as a way of creating very small scenarios with lots of data and making the data coverage very explicit.

I model BDD in two different ways. BDD as a communication process and BDD as an implementation for domain specific languages that saves me having to write a natural language parser interpreter.

I have the much more technology view of it where I use it as a domain specific language interpreter.

My views of when it's best to use it are more about I will try and use JUnit as much as possible. I will try and build abstraction layers that are readable, but JUnit is really bad for data driven test execution, therefore I will very often bring in Cucumber or BDD tools because I want data driven tests.

That typically is when I use it, which is not the industry standard answer, unfortunately.

## Have you been successful when using it as a communication process?

Speaker 13: Yes, indeed. This is a follow up question. Have you been successful when using it as a communication process, thus far as a communication process?

Alan:   No. Simply because that on its own isn't what makes the communication process work.

Our communication processes have usually been bad enough that the problem was not something that a BDD tool would solve.

The problem needed to be solved a different way and the BDD tools tended to paper over the cracks and stop the proper communication happening.

Other projects will make that work because they have better communication and then BDD will enhance it and make it faster.

## What % does continuous delivery depend on automation?

Speaker 13: I've got one more question. In the continuous delivery context, how much do you rely on automation and how much on manual or exploratory testing? As a percentage?

Alan:   If I was to put a percentage on it, it would be just a made up percentage and the made up percentage I'm going to give you is ... In my opinion and my experience, the made up percentage is going to be 95% to 98% automated.

Because you just don't have time for the manual stuff. You have a huge reliance on automated execution.

Generally, what happens, or when we were doing it what happened is, we would be expanding the automated test packs, they'd be running all the time.

We had performance tests running all the time on every build in parallel. We had exploratory testing being done on the story level. When stories were finished, being integrated into the applications. Testing, integration is exploratory testing.

We knew that we didn't have enough tests that would run in the later environments that we were continually deploying into, so we still had to do manual interactive testing on the later environments, but just a subset of execution paths through it.

That is a huge reliance on the automated execution.

## How do you see it continuous delivery done without any manual testing?

Speaker 14: Just a follow up question regarding continuous delivery. How do you see it to be done without any manual testing?

Alan:   I don't see how you can do any development without any manual testing. I imagine in the way that you're describing it the manual testing would be limited to acceptance criteria on a story by story basis.

I can't see how you would do it with ... I wouldn't trust a process that didn't have that degree of exploration in it. I would always want a degree of exploration in there, even if it was just at this story level when it was being developed.

Speaker 14: That's still under regression path, but you would rely only on automation or you would ...

Alan:   It's not necessarily that I would rely on it, but I can imagine that people would rely on it.

Theoretically, if we were to want to do continuous delivery and get rid of all the manual testing, I would be pushing back and saying, "No, no, we still have to have manual testing on the story basis."

Regression testing, I might grow to trust that as a safety net if we were doing the right level of manual testing fast enough in lower levels.

Speaker 14: All right. Thanks for confirming my opinions.


## How to deal with tests that fail randomly?

Speaker 15: Okay, we have another question here.

Alan:   Okay.

Speaker 15: [inaudible]

Alan:   Was that if we have tests that fail randomly?

Speaker 15: Yes.

Alan:   Okay. Tests that fail randomly very often only seem to fail randomly.

What we have to figure out are ways of making them fail on demand.

The first thing I look for when we've got intermittent tests is a synchronization problem.

This is my answer to pretty much everything.

Most of the time we have synchronization problems when we do automation, so it's finding what is that synchronization issue.

Sometimes it's because the environment is running slow. Sometimes it's because we have multiple tests in parallel and the data has changed.

I think it's rare that tests fail for random reasons, but they fail very often for lack of synchronization reasons.

It can be hard to really identify the root cause of intermittent tests.

## Do you use any tools to figure out the test coverage?

Speaker 15: I have another question. Do you use any tools to figure out the test coverage for GUI tests?

Alan:   No, but what I try and do is have a model of the GUI, even if it's just on paper or in my head and work out what coverage we need.

Then review the tests and see if we do them.

What I have done in the past is not for GUIs, but for APIs, I've built a model of the rest API, in terms of all the calls that we can make on the API, the different parameters that the calls can take, the different verbs that the calls make. Then run all the automated tests through a proxy, extract the proxy results as an HTTP archive file, process the archive file, and compare against the model, and then spot gaps.

We could then see that there were rest end points that we weren't covering, there were verbs on rest end points that we didn't cover, there were certain parameter combinations that we didn't do.

Now, in theory, you could do something similar to a GUI if you wanted to because presumably you're modeling page objects. You could see how often they're used, you could have log outpute that tracked the different paths that you're using through and then combine it and compare against the higher level model, if you want.

It's mainly a review process for when we do it.

## How to trends like microservices, DevOps and GUI imagevalidation impact testing

Speaker 15: One more question. I've seen recently that some new trends appears on the industry, in the industry. One would be the DevOps thing with people that have high set of skills both dev and testing and of operations and things like that, and Docker and microservices. I was wondering what is your opinion on this trend and then after you tell me I will tell you about another trend and I will ask you about that one too.

Alan:   Okay. Docker is really used for as testers or for anyone who's doing automation because it gives you a quick, easy spin up environment that is nice and easy to control. It can run on your machine, so I like Docker as a technology.

DevOps, sometimes, it depends on the company that's doing it.

I've seen DevOps put in as a response to we can't get our Agile process working, therefore we're going to start doing more stuff in production.

Sometimes, it's we're moving so fast we need to coordinate through DevOps. We've got the right level of automation to support these guys. We're putting our best people in there to make things work, so we can respond to production problems and then we'll make core changes and merge it back in, and it can work really well.

The hard part then is making sure that the DevOps team are supported by people with testing skills because there tends to be a reliance on the abstraction layers and it needs to be very flexible when they do that.

The other thing, microservices.

Microservices, again, is something that you see people do really well and where the microservices don't share state with any other services, they're a lot easier to test, and the risk of integrating between them is very minimal because it's a very functional approach to building applications, works really well.

When microservices share state, they all share the same database, then it's a lot harder.

The testing problem, it can be sometimes hard to convince people that you need to do as much testing as you need to do because they've convinced themselves that by using microservices, or what they call microservices, you can cut down on the amount of testing you need to do.

Speaker 15: Okay. Basically, you like if it's applied correctly.

Alan:   All those technologies can work when they're done well, yeah.

Speaker 15: Okay. The other trend that I noticed is for the UI testing or the GUI testing, there are some rules and some companies that are actually comparing images. What do you think about that?

Alan:   I haven't used AppliTest properly yet. In general, I don't like tools that compare images. I think the idea of AppliTest is slightly different.

Also, there's a tool from eBay, who's name I keep forgetting (GALEN FRAMEWORK), that lets you test CSS and conditions, which is something I'm more likely to use. Because then you can programmatically define the type of visual state that you want.

In general, I don't like relying on image based technology, but something like AppliTools, because it uses the WebDriver API, it can slot into your existing tests and you can see if it adds value without actually really changing the tests that you've got.

It's something worth experimenting if you're interested and it might add value in the applications that you're using.

Speaker 15: Okay. I was just curious if you will use.

Alan:   Yes, it's on my list of things to investigate properly, but I haven't investigated it properly yet.

Speaker 15: Okay.
