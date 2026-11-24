# Prepared Talk Notes

These are the original written talk notes, converted from ODT. They are not a transcript of the delivered session. Original presenter cues and the unfinished demo TODO are retained. The notes follow an earlier outline, so their section titles do not map one-to-one to the expanded 25-slide deck.

## Title: The Evil Tester's Guide to Technical Web Testing

## Outline:

I assert that Tester's need technical skills when testing 'anything'. Since I primarily test web applications, I will describe my technical view of Web Testing. In this session I will describe some of the tools that I use when testing, not because technical web testing revolves around tools, but because the technical testing thinking process leads to the finding and utilisation of tools. Tools are the draw, the quick win for attendees. But thought processes sit at the core of this talk. They lead to tool augmentation, to exploring the built in capabilities of the browsers, and to the skills we need to test technically. I will talk a little around theory, and, dangerously for a live session, I will provide a demonstration of tool augmented technical testing.

## What is Technical Testing to You?

I’m not going to give you a definition.

Why?

- To play games with your mind
- To force you to think what you think it means to you
- So you can feel where your bias lies

Some people hate the phrase. When I use it, some people just hate it.

For a whole bunch of different reasons.

Some managers hate it because they fear that people are going to lose sight of requirements or value and focus on technical nitty gritty. Because that would be bad. They don’t want their testers getting stuck into the technical stuff.

Some testers hate it because they don’t want to be technical at all. They just want to test. Because apparently you can test things without getting technical. I work in a technical industry. The products we build and test are pretty technical, and getting more technical by the day. But apparently you can test things without getting technical.

Some testers can identify with it. They like understanding the system and how it is put together. They like to use tools that can help them test better. They like to automate things. They like to dive deep into the application. They like to get really hands on.

So I leave this as a question to you to consider. You might find that you lean away from it, in which case you should look at what you fear, or what negative elements you see in there. And work on removing them.

If you lean towards it then I caution you. Are you embracing it too much? Do you let the things that you consider ‘non-technical’ slide or become less important?

## What is Technical Testing to Me?

Do I have a good definition? No. And I don’t care. I’m not going to give you a definition. Because technical testing is something that has an ill defined scope, that grows, expands, contracts depending on the software that I’m testing and depending on the tester doing the testing.

Its a basic reminder to me that I need to keep going deeper into all the models that I create. Cause our models have models. Our models overlap other models. We can remodel from different perspectives.

It reminds me that I need tools to help me understand. Spreadsheets to model the business and the various financial calculations in use. Tools to help me view processes running. Browsers to view the HTML rendering. I don’t need a browser to surf the web, just to render the HTML and execute the JavaScript.

I can issue Get commands through Curl if I want to ‘surf the web’.

My entire physical interaction with the software is through tools. But they don’t direct what I do, they augment what I do.

Its just how I describe what I do. And I only recently realised why.

## Go beyond the Surface Structure

I used to talk about Transformational Grammar a lot when I was developing my understanding of testing.

Chomsky setout Transformational Grammar as a linguistic model to describe the ‘things’ people say (Surface structure), as different from the ‘things’ people mean (Deep structure).

And I think that is really important when we test. When we work with requirements documents, the conversations we have... and the actual applications, they have a Surface and Deep structure.

The GUI presents a ‘surface’ structure to me. Sometimes it doesn’t mean what it says.

“An error has occured” \[OK | Cancel\]

Does cancel mean cancel the error? Does OK mean allow the error to occur?

As testers we look for inconsistencies between the surface and deep structures because they often turn out to be bugs.

## So what is technical testing in Transformational Grammar terms?

I can still apply my model of testing, built when looking into transformational grammar, under this ‘technical testing’ banner.

Systems have deep structures. The underlying data and processes that the system attempts to communicate to us through its surface structure (events, GUIs, reports, etc.)

We often can’t observe those deep structures easily so we need to augment our testing with tools to help us.

I slowly coalesce all my models of testing together. And Technical Testing starts to become my banner.

And every consultant needs a ™ style phrase to bandy about to show why you should employ me and not ‘the other guy’. And “Technical Testing” is currently why you should employ me, and not ‘the other guy’.

## Technical Web Testing

So focussing on the “Testing” part of Technical Web Testing.

Involves us understanding the Project and System context.

This is really the ‘normal’ testing stuff. But with the “Technical” testing hat on we focus on going below the surface structure.

The surface structure of the business is what the BAs tell us.

The deep structure contains the actual business theories, financial models, laws, regulations. The aims of project, what the different stakeholders need (as opposed to what they say).

We want to understand the system:

- The basic web context: how http works, what are http headers, different mime types, etc.
- The application context: what technologies we are using (spring, hibernate), JQuery, database types, architecture, etc.
- The deployment context: what versions of the technologies, topologies for different environments, scaling strategies, replication strategies, etc.
- The usage context: what devices will access it, when, from where? etc.

And we are going to identify the technical risks that we perceive for all of this. The different interconnection points between system components, the interplay of technologies, between business theory and the algorithms we implement, the topological risks between the test environment and the live environment, etc.

And we are going to come up with a shed load of test ideas. Using whatever test techniques you have to hand. Whatever thinking tools you have to hand.

## Technicalities for Web Testing

Mainly focussing on the System context part.

I want to know how I’m going to know what I know.

How can I observe below the surface structure. How can I observe the http traffic? How can I observe the processor load on the server? How can I record the traffic so that I can view and analyse it later?

How can I interrogate it? How can I drill in and look at it in detail? How can I pause the world and look at the system state as it is now with its heap unchanging? How can I look at it in different ways? How can I chain through and follow a chain of observation and interrogation? I want to drill into the http message, I want to see the headers, I want to decode the mime object, I want to analyse the cookie values. etc.

How can I manipulate it? How can I change the http headers so the cache header is missing? How can I change the session id and pretend to be someone else? How can I bypass the Javascript validation? etc. etc.

I need to know how I can gain a deeper understanding (through interrogation and observation) to allow me to come up with new test ideas, and how I can control the system to allow me to put my ideas into action.

## Web Context: A Browser View

So let’s start simple.

This is a model of a generic web application, completely independent of the project context. And this is only a little deeper than the surface structure.

For a lot of people a web application is what happens in the browser. They have no ideas about server or http messages, or any of that stuff. They don’t know about JavaScript, they don’t know what CSS is, or Flash or any of that.

But its only one level down. And its not at a traffic level its at a static browser level.

And we can get a bit more technical.

What might a more technical view look like? For example, what risks might lurk here?

## Web Context: A Browser View - Technical Risks

There are risks that the files might not exist, the HTML might reference a css file that doesn’t exist so a 404 error occurs.

We might get rendering errors because the html is wrong, or the css is wrong, or the wrong tag is in the CSS.

We access with different browsers so the html might not work, the css &amp; html combination might work differently with different browsers causing a rendering error.

JavaScript is a programming language so we might get syntax errors, or logic errors (loops that don’t terminate, incorrect predicates in the if statements, etc.)

The JavaScript might work on one browser, but not on another, and might behave differently between different versions of browsers.

And we could go on. But the point is we can identify a lot of technical risks the more deeply we understand the technology. And with every level of understanding, and every new model we build, we identify new risks.

## Web Context: A Browser View - Technical Tooling Augmentation

For each of the risks, we can identify tools to help us Observe, Interrogate or Manipulate it.

explain diag, etc.

What else might we identify, using just the model in front of us. Using just the risks that are up there?

And what additional risks might we identify - with just this model here? If you identify risks that don’t apply to this model then try and remember them because we’re going to consider other models in a minute.

## Exercise: Elaborate this model

So here is a different model. A little deeper, but not deep enough for what the model actually represents.

I’ve introduced a web server, and the concepts of an HTTP response and HTTP Request. And now the higher level entities that we had before: JavaScript, CSS etc. are really just responses with different content types and different MIME types for the body.

So how might we elaborate this?

- What technology elements could I add?
- What risks are present here?
- What system elements are probably missing?
- What tools might I want to use?

## Exercise: What other models might we build?

Currently we modelled the technology domain in terms of a basic Browser view, a simple HTTP view, what else might we have?

e.g. load view, parallel processing view, if it is sharded what is the upgrade view, how will it scale? is there an app server? what database? etc.

And each model requires new technology understanding. New risks appear. New tools are suggested.

## Model Suggests... Tool Suggests...

We have seen that we can work from model, to risk, to tool.

But we can also work from tool to model. And this is the way that most people work. They learn that a tool exists, start using it, then seeing what it can do, it suggests new ways of testing, or new ideas that they hadn’t thought of, or new risks, or new things to learn.

e.g.

- add in a passive security scanner and what happens to your testing?
- add in a decompiler for flash and what happens to your testing?

What other tools might we add that we haven’t mentioned?

## Tooling Demo

TODO: decide what to demo, and to lead through the demo from a thought process point of view

## Summary

I’ve presented here “Technical Testing” as something that understands that there is more than a ‘surface’ structure to what we do and how we work. And that the analysis and exploration of the deeper structure and the mismatch relationship between surface structure and deep structure is what I’m calling Technical Testing.

And we have to model. To help us understand, so fill gaps in our model, to research. To identify risk and create test ideas.

And from our risk and test ideas we can imagine the type of tooling that we might need to help us. And from this ‘first principle’ stance, we can go looking for tools.

Tools were presented as an augmentation rather than a driver. Allowing us to Observe, Interrogate and Manipulate the deep structure.

Tools can be a driver, and we should never forget that, because that can help us add new dimensions to our models. But it is the models that should drive our testing and we augment it with tooling.
