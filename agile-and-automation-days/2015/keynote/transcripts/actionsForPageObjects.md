## Own Your Automation Abstractions

Because we're talking about how to improve your technical ability, and one way to do that is to own your models and abstractions of the world.

One of those abstractions that we have, is realted to when we do automation. Now there are patterns that we are aware of when we do automation.

We've got page objects, we've got domain objects, we've got possibly work flows, we've got data objects. Now if we just stick to patterns, we will end up probably creating the wrong type of abstraction, that it might not work, we'll have to change it. What we have to do in order to improve our technical ability is really get down to the core of what these abstractions mean.

I'm going to use an example from page objects. What is a page object?

Well, my first page objects were objects that represent the page, so they would have constants for the locators. It might even have methods to get different elements off the page. It might have higher level methods, which let me do things to the page, like click on this, wait for that to happen, then click on this, and fill in this form. right, so "do-the-thing" type methods.

So, suddenly I have a page object that represents a page and everything to do with the page domain model, but doesn't have a single responsibility.

Now if we look at our code, then we, one of the patterns we want to do in order to write good code, are don't repeat yourself, and single responsibility. And by having a  page object, we have constants for all the locators, which is good, right? Then we're not going to repeat ourselves in the test code, because in the test code, we might write `find element with ID='bob'`, and then later on in the test code `find element with ID='bob'`. That's repeated code, we don't want that, so we re-factored that into the page object, so we've avoided some repeating code, that's good.


Then we find in our tests we've got actions that are hidden in there, because we say: "Find this element, then click on it, then wait for something to happen, then click on the next thing." That's some action we end up using that repeated set of commands in different places, so we re-factor that into a method in the page. But what we've just done, is we no longer have single responsibility in the page, we no longer have clean code, because we got rid of the repetition.

But I was talking about that, I said we have the concept of an action, to do the things. So what if we actually create an object for the action?

What if there was four steps within an action object that knows how to do that?

Then maybe the page object, then it just becomes a collection of web elements, and web element locators, and actions. Since those actions are objects, we can use them in different places, right, so not just the page knows about ... exposes those actions to other people. Maybe we can have a User object, that knows how to do certain action. Right? Then that gives you a nice interface around that, because your action object has a do-method in the interface, so a User can do the action, and it knows how to call the do-object, and knows how to construct it, because it knows how to do the actions. So, it has all the information that it needs to know how to construct that action. 

Then we don't have to worry about making the action constructor really nice, because the only place that the action is ever going to be used, is by objects that already know how to use it. Then we have a different way of looking at our abstraction layerer. I think I got the action object from ... I think it was John Smart's talk, about automation.

* [Journey Pattern Slides](http://www.slideshare.net/wakaleo/serenity-and-the-journey-pattern)
* [John Smart - Wakaleo.com](http://www.wakaleo.com)

John was talking about a journey pattern, or something, which ... I mean it's fine, but those kind of pattern names don't make much sense to me, because, again, what we're trying to do to improve our technical ability, is 'own' the abstractions and the models that we use, so I have now owned this abstraction and come up with an Action object concept. Which fits in with my basic principles of 'don't repeat yourself' and 'clean code', and I can handle, I can live with page objects that are collections of web elements, and actions.

Maybe that's what a page object is. Maybe it's not even a collection class, so maybe a page object is a way of gaining access to a collection of web elements that are in context, and a way of gaining access to a collection of actions that can be done in this context. Maybe that's all a page object is.

Then it would be very small, it does have dependencies on all these things, a page object has a structural dependency on the page it represents, so it makes sense that when the page structure changes, when new elements are added, that the page objects will change.

But it may not make sense to have a lot of methods on that page object.

Just trying to think about when you own this, because there's other layers of abstraction that we can put in place, and if you start thinking this through, you will come up with clean abstraction layers that make sense in your domain, are easy to update, and easy to maintain.
