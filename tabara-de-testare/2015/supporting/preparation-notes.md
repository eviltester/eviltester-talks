# Preparation Notes — An Introduction to Technical Testing

These are Alan Richardson's initial notes, already published on the [conference page](https://www.eviltester.com/conference/tabaradetestare2015_conference/). They record preparation, not a transcript of the webinar or Q&A. The NLP for Testers resource link uses its current EvilTester URL.

### Intro: What do I mean by Technical Testing?

"going beyond requirements and using Technical Information about the implementation and an understanding of the technologies used in the building of the system to add to the risk profile and use to help derive test approaches"

*   using Web Testing as an example
*   how approaching testing from a technical perspective changes how you view the system and how you test
*   how a technical understanding leads to a different use of tooling and automation

Quick Surface Structure Examples:

*   Non-Technical Testing of a Web App
    *   tester -> browser
*   Technical Testing of a Web App
    *   tester -> browser -> proxy -> server -> DB

### What do I mean by Testing?

*   All the traditional stuff we learned
    *   e.g. Testing Techniques, Testing Object Oriented Systems
*   All the Lessons we've learned over the years
    *   e.g. Testing Computer Software, Lessons Learned in software testing
*   Over the years we build up our own models of what we do
    *   Heuristics, Rapid Software Testing
*   My Model - MORIM
    *   Modelling - Rethinking Systems Analysis & Design, Domain Driven Design, Diagnosing the System For Organisations
    *   Observation
    *   Reflection
    *   Interrogation
    *   Manipulation
*   For 'Testing' I took a lot of this from Psychoanalysis
    *   Modelling, you build a model of the client
    *   Observation, what language patterns do people use? Structure of Magic
    *   Interrogation, what questions should we ask? Provocative Therapy
    *   Reflection, how we build a better model, figure out what questions to ask next
    *   Manipulation, if you want to effect change, you have to manipulate - Hypnosis

### What do I mean by Technical Testing?

*   A lot of 'technical' stuff in the previous section: Hypnosis, testing techniques and approaches, psychological models, linguistics, etc.
*   But now I mean 'technical' in the sense of Technology
*   How you test a command line app differs from how you test a web app because the technology is different.
    *   There are different risks
    *   You have a different interface
    *   You have different scope of inputs
*   You could have a command line app, and a web app, with essentially the same requirements (they'd be high level, but could read the same)
*   You could use the requirements to build much the same test plan (you'd be wrong if you did this, but you could)
*   But the technology is different, you will want to test it differently.
*   Some things I want to understand from a 'technical perspective'
    *   what language is it written in?
    *   what tools did the developers use?
    *   what approaches did the system of development use? TDD. BDD, JUnit, etc.
    *   what libraries is it using?
    *   what is the architecture?
    *   a command line tool which connects to a server offers different risks than a tool which works with flat files or one which connects to a database
*   The more I understand, the richer my model, the more variety I an introduce into my testing.

### MORIM Technical Testing

*   Modelling - the richer we model the more options we have
    *   coverage - is about models
*   Observe

    *   the more I understand about the technology the more I can figure out what and how to observe
        *   e.g. web app, it isn't just some magic in a browser
    *   what does a browser render?
        *   HTML, CSS, JavaScript
        *   all of this as a DOM
        *   This isn't static, it can change
        *   How can I observe that?
            *   view source
            *   dev tools
            *   proxy to see the files as they are loaded, prior to representation in the DOM
            *   I can use the debug console to see variables and elements etc.
    *   A Web app isn't just in the browser, there is traffic
        *   HTTP - POST, GET
        *   Ajax - XMLHttpRequest - XML, JSON
        *   Headers, Cookies
        *   How can I observe that?
            *   dev tools
            *   proxies
    *   A Web app also exists on the server
        *   HTTP Server
        *   Edge Servers
        *   App server
        *   How are requests routed internally?
        *   How can I observe that?
            *   log files
            *   process monitoring
                *   But where is the data persisted?
                *   Database?
                *   Flat Files?
                *   How can I observe that?
*   Reflection

    *   The more I understand the technology the more I research, and the more questions I have
        *   Is it load balanced? How? How can I observe that? What risks are there now?
        *   Questions guide my intent
*   Interrogation

    *   How can I deep dive into the system and its components, and not just observe it at a surface level
    *   Dev tools sometimes lose the traffic data when you navigate between pages, proxies don't
    *   I can store proxy traffic for later viewing and analysis
    *   etc.
*   Manipulation

    *   I know the system has all these different parts
    *   How can I manipulate them - add new data into the database? Change the HTTP traffic
    *   Why would I want to? Bypass the JavaScript validation on the front end and send requests to the backend
        *   we could switch javascript off, but that might mean the full processing on the front end is not performed and a 'different' message might be sent, we might not send XMLHttpRequests, etc.
        *   I need the ability to maintain the application context as much as possible but still manipulate it as much as I need to

And we rinse and repeat

But note that:

*   I don't start with 'what tools can I use?'

I proceed from model and understanding through:

*   Observe, Interrogate and Manipulate

Then I find tools to help me.

*   I try and find multiple tools to help me.
    *   Proxies:
        *   BurpSuite,
        *   ZAP,
        *   Fiddler

Why?

Because tools are 'technology' they have features and functionality that others might not, when I understand this then new approaches for manipulation might open up e.g. Fuzzing - repeating requests while varying data.

Resources List:

*   Testing:
    *   Testing Techniques (Beizer),
    *   Testing Object Oriented Systems (Binder)
    *   Testing Computer Software,
    *   Lessons Learned in software testing
    *   Heuristics lists - [Quality Perspectives heuristics and mnemonics](https://www.qualityperspectives.ca/resources_mnemonics.html)
    *   Rapid Software Testing by James Bach & Michael Bolton [Rapid Software Testing information page](https://www.satisfice.com/info_rst.shtml)
    *   Principles of Experimentation And Measurement - Gordon M. Bragg
*   Modelling
    *   Rethinking Systems Analysis & Design by Gerald M. Weinberg
    *   Domain Driven Design by Eric Evans
    *   Diagnosing the System For Organisations by Stafford Beer
    *   Software Requirements & Specifications by Michael Jackson
*   Observation
    *   The Structure of Magic Volumes 1 & 2 by Richard Bandler and John Grinder
*   Interrogation
    *   The Web Application Hackers Handbook
    *   Provocative Therapy by Frank Farrelly
    *   NLP For Testers, by Alan Richardson [NLP For Testers page](https://www.eviltester.com/nlp-for-testers/)
*   Reflection
    *   Quantum Psychology by Robert Anton Wilson
*   Manipulation
    *   How to Break Software, How to Break Web Software, How to Break Security by Whittaker (and others)
    *   Patterns of the Hypnotic Techniques of Milton Erickson by Richard Bandler & John Grinder
    *   Changing with Families by Bandler, Grinder & Virginia Satir
