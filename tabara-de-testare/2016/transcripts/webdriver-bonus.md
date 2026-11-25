# Lessons learned working with WebDriver

So these are the bonus WebDriver lectures. When I was doing the webinar, I didn't quite get a chance to do all the slides that we wanted, because it was starting to take a little bit too long. So what I'm going to do now are talk about the slides that were covered.

* Locator strategy tips?
* Problems encountered?
* Implicit & Explicit Waits?
* How to structure project?
* Frameworks?
* Disadvantages?

The questions that we were asked about WebDriver were basically tips around locators; any general problems that we encounter doing WebDriver; implicit versus explicit weights, which comes up a lot; how to structure the projects and where to put the code; do I use any particular frame works for WebDriver?; and whether there's any particular disadvantages for WebDriver or not.

## Any Location Strategy Tips?

* Aim for an ID, then CSS, then Xpath
* Optimised hierarchy starting at an ID with chained findElement calls
* Build less for speed of execution and more accuracy across multiple pages
* More arguments about managing in the code or external 'map' files

So when it comes to locators, I try and keep the locators as simple as I can. Now, in WebDriver, you know that you've got things like by name, by ID, by class, by name and ID, by CSS, by XPath, by a few others. Now, under the covers, we've essentially got by ID, by CSS, and by XPath. Anything complicated like name, or name and class, is implemented by using the CSS selector.

I try and constrain the selectors I use for ID as much as possible.

Very often, you're testing web applications that have not been optimized to allow them to be automated. So we have no IDs, because the web community went through a phase, or is still going through that period, where IDs are bad, because what people used IDs for were CSS styling, and what they really want to do is use the class's names for CSS styling rather than the IDs, because you can only have one unique ID on a page.

So if you're using complicated HTML, you might have a component repeating multiple times. It might have the same ID. That messes things up, therefore people moved away from using IDs. Now, that's fine for CSS, but for the work that we do, when we automate, the ID is *the* most effective way of locating something on a page.

So if we can use that, that's the best thing to do.

So very often, what we have to do is negotiate and work with the people who are programming the application to make sure the IDs are used effectively, or that we add classes or names in to make it easy to write the CSS.

If everything goes wrong and I can't use CSS and I have to drop down to XPath - and sometimes I have to use XPath, because I need to use some of the functions to get parent and get sibling, which are relatively complicated in XPath.

You can't do that as easily in CSS. I only tend to use XPath if I can't use CSS. Part of the reason for that is that more and more people understand CSS selectors.

We don't do as much XML in projects anymore. We're moving towards JSON, we're moving towards JavaScript, we're moving towards CSS. So people understand CSS selectors when they don't necessarily understand XPath.

Therefore, if you use CSS, more people will understand the locators and will be able to maintain your code.

If you use XPath, you're limiting the number of people that can get involved and review it.

It used to be the case that XPath was slower than CSS, but now they're pretty much on par, I think. I don't think there's an obvious difference between them, but I imagine that CSS will probably become faster, because that's what the browsers use, that's what the JavaScript uses, that's what the front end uses.

So I try to stick with CSS as much as possible.

If I need to do something complicated, I try to cut down on the complicated CSS and XPath and make a hierarchy of findElements.

So I'll issue a findElement to try to get something higher up in the hierarchy. Now, that might be a complicated call to get that, but everything under that should be, hopefully, very simple, and there's relative to that findElement.

So we end up chaining findElement calls.

Very often, what I'm doing is I'm not necessarily trying to make my locators as fast as possible, because I don't really mind if I use XPath periodically.

I'm building them so that they're robust, and so that they're maintainable, and so that I can use them, possibly on multiple pages. Because the same web component is going to be across multiple pages, and I'll have page objects that represent that web component.

Very often, what we end up discussing in projects are not so much the complicated locators, and more about, "Should we have the locators as constants in the code?", or "should they be managed in JSON files?", or "Should they be managed in YAML files?", external, kind of creating mapping files so that we can possibly upload different mapping files on different environments. And really, it depends what your application is doing.

If your application is complicated enough that every environment has different locators, strategies that are required, and therefore you need to have that flexibility in terms of environments without changing code, then, by all means, put them in external files.

I try to keep things as simple as possible, and for me, that means putting things inside code, because then I can re-factor it, I can easily jump to it, because I'm using static languages like Java it is a lot easier for me to just find putting things in code than it is external files.

I think if you're using dynamic languages where you don't have as much IDE support, it becomes easier to justify decisions about putting all of your locators, your strings for locators, in external mapping files like YAML files, because you do that with a lot of the code and configuration you already have.

## Common WebDriver Problems

* Synchronisation
    * Add more than you think
    * Sync prior to action
    * SlowLoadableComponent
    * 'ware remote
* Abstraction Layers
    * Refactoring
* Bug workarounds
    * JavaScriptExecutor
    * Inject cookies from HTTP calls
    * Monkey patching Ruby

So, common WebDriver problems.

### Synchronisation

The biggest problems that I see in people's code is related to synchronization. Generally, if something goes wrong ... if people say, "We have flaky tests, our tests don't work. Our tests don't work on this browser, our tests don't work on this platform," the first thing I look at is synchronization.

Because very often, what people do is they'll synchronize on a page load.

They'll either wait for the page to load ... They might synchronize on one or two elements on the page, but what they don't tend to do is synchronize on application state.

They don't view their pages as applications, they don't view them as having multiple states within a page.

So very often people have a single page object for a page, and that page object would have the header and the footer and the body and some other components on the side.

What I'll tend to do, is I'll tend to have page objects for each of those - I'll have a page object for the header, a page object for the footer, a page object for the components on the side.

Each of those can be synchronized on separately.

So if I need do use the component on the side, I will synchronize to make sure that that component is ready.

Then, before I do anything inside that component, I will synchronize to make sure that the field that I want to access is ready in there.

This is particularly important when you're using a lot of JavaScript, when you've got a lot of slow loading of images, or you have dynamic rendering of the page, so as you scroll, things are loaded.

I try and model my web page as an application - I try to have multiple states within the application.

I try to sync on the thing that I'm going to use, before I use it.

Because most of the time, synchronization doesn't add cost to your test execution. If you are waiting for something to be present on the page and it is present, your wait will just not wait ... it will just be there.

Problem is, when you're using remote WebDriver, each of the waits is making a call, and a poll into the server, and can slow down your test. So if you're saying, "Wait for the header," and the response comes back and you've got all of this latency between yourself and the grid system, then that wait can be slow, and you might need to do another strategy under those circumstances.

But also, you may not need to wait as much, because the latency is going to slow down your page.

I very often use the slow-loadable component, which is in the support classes, a variant on the slow-loadable component, to make sure that I have a consistent approach to loading the page objects. So look at the slow-loadable component if you're using Java.


### Abstraction Layers

When I'm creating abstraction layers, I tend to re-factor too abstraction layers.

So I'm getting my code working, then I'll look at where I have repeated code, then I'll look at where the code can be better represented in an abstraction layer, and I'll re-factor to that.

A lot of people get hung up on creating abstraction layers fist and then making the code fit around that.

I think you write code, you re-factor to the abstraction layers, and you continually re-factor your abstraction layers so that they work for the use cases that you're implementing and your test methods.

Now, I generally build abstraction layers to support my manual testing, as well.

I want the ability to use whatever I'm doing to automate the web application or to automate the API as part of my interactive exploration, and to write ad hoc code that will possibly get the application into a state where it can then stop and then me, personally, can interact with the application once the automated code has taken me to a certain point.

So I want the abstraction layers to support that, as well.

### Bug Workarounds

There are ways of working around bugs, either in your application - because you know the bug is going to be fixed, but you need to push the coverage through. You are working around bugs in specific browsers. Sometimes some browsers have some issues and some don't.

You may be working around bugs in the current WebDriver implementation that you've got. It's open source, sometimes it has bugs. It's very, very stable, but periodically they happen. Now, in the past, I've worked around those using the JavaScript executor, which is enormously powerful, but you need to know JavaScript.

I've used direct HTTP calls to the server and injected cookies from the HTTP calls I've made into the browser, to continue a session I've started in HTTP to bypass certain areas in the system, to fix a bug in the Java WebDriver.

In earlier versions, we were using Ruby libraries, and we had to patch something lower down in the Ruby library, because it was throwing an exception on the application that we were working on - not in general, just in the application that we were working on.

But in Ruby, because it's dynamic, we were able to do things like monkey patching in there, so we used that.

### Summary

These are the main problems that I find we have with WebDriver, and generally it's a synchronization problem. Very often, people have got the wrong abstraction layer, so just keep re-factoring them.

And get in the habit of working around bugs in the simplest way you can. One thing I try and do, often when I've put in code to work around a bug, is try and put in some way of detecting that in the code, to tell me when that bug is fixed.

Because very often, bug work-arounds will stay in your code for a long time.

## Implicit & Explicit Waits

* Never use Implicit Waits
* And if Explicit waits still result in timeout?
    * Missing Synchronisation
    * Environment Speed Variability
    * Remote Grid?
    * May have to increase timeout on 'big state' actions


So this is coming back to the synchronization strategies, implicit versus explicit waits.

I never, ever use implicit waits. I try and avoid all codes that use these implicit waits.

If we have a problem in the automated execution, I try ... the first thing I do is run it with the implicit wait set to zero, make sure it is absolutely set to zero so that we are controlling the synchronization explicitly.

If you have an explicit wait but your test still times out, you're waiting for a page to load, it loads, you're waiting for something to happen and that times out, chances are what you need are some intermediate synchronization points.

You need to wait for the page to load, you need to wait for the header to load, you need to wait for the footer to be finished, you need to wait for whatever dynamic JavaScript is executing, because your component gets in last, and your component is loaded after all of those other parts.

So you need to wait for those.

And what we sometimes find is that different environments operate at different speeds, so we may need to have a configuration option, a configuration there so that the time out that we have in one environment is different from the time out in another environment.

That might happen when you're doing the remote grid. The grid latency contributes to your timeout.

You may need fewer timeouts, you may need to wait on a different thing when you're doing remote, because of the different states happening at different points, and sometimes you need to increase the timeout period for certain state transitions, because they take longer.

Now, what you really want to do is get the timeouts as small as possible, so that you're getting any errors reported to you as quickly as possible.

But sometimes you have no option but to increase the timeout. But what we want to do is make that timeout as explicit to the action that we're doing as possible, rather than having it as an implicit timeout that applies to our entire execution environment.


## How to structure project?

* Maven Structure
* `\test`
    * The `@Test` code
* `\src`
    * The abstractions
* Packages
    * Refactor as we go


So for structuring projects, I keep things as simple as humanly possible.

Now, very often, my projects are test projects, right? So we have the application in another project entirely, so my project is just a test project. It has all of the abstractions, it has all of the app test methods, it has all of the suites that we're using to execute against a deployed application.

Under those circumstances, I tend to just use the normal maven structure.

I'm using Java, there's a standard maven structure.

You have the test folder and the source folder. In the test folder is where all of my `@test` methods go, all of my actual test execution code.

All of my abstraction layers go in the source folder, and then I'll just use whatever package structure makes it understandable what I'm building.

I don't necessarily say I'll have source, company name, and page objects, and front page, whatever.

I will have whatever structure becomes necessary for the project we're doing. Some applications will have a very physical set of abstractions and not as much logical domain abstractions.

They may not have customer entities, they may not have accounts, so they may not have a logical domain in there. It might just be purely physical, therefore it might not have something that says ".physical.pageobjects."

I might have physical objects, I might have logical page objects. Who knows? I'm just going to re-factor this to build up something that is appropriate for the level of abstraction that I'm doing.

If I have any unit test code, and I do write unit test code for my really low-level abstractions I'm using, if I have data generation classes, I will write unit tests for those, and the unit tests will be in the "test" folder as well as my system test.

It doesn't matter to me that the unit tests are run as part of the continuous integration every time we do a build, because they're going to run fast, and they're going to help me understand whether I've introduced a problem in my abstraction layers.

## Frameworks or additional tools?

* No, I avoid frameworks as much as I can
* WebDriver doesn't seem hard enough
* Model application domain as abstraction layers
* Closest to framework – Cucumber, Junit
    * Cucumber – DSL
    * Junit – test runner
    * Both delegate/use domain abstractions

So when it comes to frameworks or additional tools on top of WebDriver, I don't use any.

I mean, I know there's a whole bunch out there - we've got Serenity, Iridium, FluentLenium, there's a whole bunch of things.

I really don't use any of those, because WebDriver itself does not seem hard enough to justify them.

What I want are abstraction layers that map onto my application and the application domain.

What I don't want are abstraction layers that sit on top of WebDriver.

Which is very often what you see when you draw down a framework.

It may be important to have ... something like the select class, which wraps around a web element and gives you extra features. A web element abstraction.

That may be important.

What are probably more important are component abstractions for your application, for the controls that you use in your particular application. They may well have been covered in a previous library.

I mean, if you're using Angular JS, Protractor may be brilliant. It may fit in perfectly with what you're doing, and it gives you a set of abstractions on top.

Very often, what you'll find is that the abstractions that these frameworks give you that are unique to the problem domain ... so the Angular has different synchronization requirements. Chances are, the code that is implemented in those synchronizations is very small, so you could probably, if you needed to, rip that out and recreate it in a different abstraction layer.

I try not to use frameworks or additional libraries, partly because if I have an abstraction that's built on top of WebDriver, and WebDriver moves onto the next version, and I need to use the next version of WebDriver to target the most up-to-date browsers, if that framework hasn't been updated to allow me to move up to WebDriver, I am being held back by the framework, and that's not acceptable.

The framework should be a library that I plug in that is seamless, if I use anything at all.

The closest I come to frameworks is using something like Cucumber, which I will use as a domain-specific language for modeling the business domain and making something that's human-readable and understandable by humans.

I'll use Junit as a test-runner.

Now, both of those target different domains and use cases. Junit is a test execution framework that supports the work I'm doing and gives me extra value in there. Cucumber makes it easier for me to write a DSL so I don't have to write a parser for it.

I'm using WebDriver as my browser abstraction, so I don't really need another browser level-abstraction in there.

And because no one else knows our application as well as we do, we will build the logical and physical abstractions that cover the application we're doing and help us synchronize better.

That doesn't mean you shouldn't look at them.

I mean, investigate them all, see what they give you.

You might find code that you look at and think, "This is a really good pattern, I want to have a fluent interface."

You might see that the actor model that's in Serenity's screenplay pattern might be something really useful that you want to bring onboard, but not necessarily bring in the full Serenity process, but bring in the little tiny aspect and experiment within your code.

Do investigate these things, because it will give you different ideas on how you could possibly model your abstractions, and some of them might fit perfectly.

They might fit your use case, your thought process, and how you model the world absolutely perfectly, in which case it would be a great fit in your project. It's just that I haven't done that.

## Disadvantages of WebDriver?

* Not fully supported by browser vendors yet
    * Safari/Apple
    * Microsoft (Edge isn't complete yet)
* Compared to what?
    * Do browser vendors support any other tool?
    * Google (Chrome), Mozilla (Firefox)


The last question, is, "Are there any disadvantages of WebDriver?" I mean, not really, in terms of I don't know of very many other applications or libraries that I would use for automating browsers.

It's open source, it runs on pretty much every platform, it's well supported in terms of cloud tools, and because of the W3C standardization of the wire protocol, it's now being implemented in pretty much every browser.

Microsoft are coming up with their own driver for Edge.

Apple have just said that they're going to release their implementation of the WebDriver server in the actual operating system level.

So now for the first time in years you'll be able to automate Safari on Apple.

Because it's the W3C standard, it's being supported by the browser operating systems, by the operating systems and the browsers.

Chrome has its own driver, which is maintained by Google.

Mozilla are starting to maintain their driver called Marionette, the Gecko driver, which will take over from Firefox driver.

Pretty soon, WebDriver will have this core set of protocols, and the browser vendors will bring in their abstraction layers.

Appium is essentially the mobile proxy for the different mobile browsers that you're going to get. What this really means is not a lot of disadvantages, but a lot of advantages.

So the disadvantage is if the browser vendors don't commit to creating a driver, then you can't automate them. However, if the browser vendors do not commit to a WebDriver, which is standard, do they contribute to any other tool?

I guess the disadvantage for a lot of people is that they have to be able to code, and they have to be able to build their own abstraction layers.

So if you can't code and you can't think through the design that you need through the abstraction layers, you're going to bring in a framework, and the framework may well - we just kind of mentioned this - work at a lower level than you want to.

I think that's probably the biggest disadvantage: you have to know what you're doing, you have to learn WebDriver, and you have to be able to code.

All of those, to me, are advantages, because they make it more flexible, they have a skill requirement that I think is important for effectively automating your applications.

So I think for every disadvantage that some people see, we can probably turn that into an advantage and say that you really need to learn as much as you can when you're doing WebDriver rather than rely on things that are on top.

But the fact that it gets supported by operating system vendors and browser vendors makes it a winner out there in the real world.

I think that's it. I think that's all of the extra questions that we had on WebDriver that we couldn't fit into the main webinar.
