# Risk Mitigation Using Exploratory and Technical Testing

This document has slides and notes for a webinar presented on 28th June 2016 in partnership between [QASymphony](https://www.qasymphony.com) and Alan Richardson of [Compendium Developments Ltd](http://www.compendiumdev.co.uk)

This document is not a transcript, it is a set of notes to expand on the slides. Where the slide is text and self explanatory we don't add a lot of notes.

Copyright Compendium Developments Ltd 2016

![Slide 3](../images/slide-03.png)

Books:

* "[Dear Evil Tester](http://compendiumdev.co.uk/page/deareviltester)",
* "[Java For Testers](http://www.compendiumdev.co.uk/page/javafortestersbook)"
* and "[Selenium Simplified](http://compendiumdev.co.uk/selenium/)";

Online training courses on:

* [Technical web testing](http://compendiumdev.co.uk/page/techweb101course),
* [Java and Selenium WebDriver](http://compendiumdev.co.uk/page/seleniumwebdrivercourse)
* [Java and Technical testing](http://compendiumdev.co.uk/page/casestudyjavadesktop)

Websites and blogs:

* [EvilTester.com](http://eviltester.com),
* [seleniumsimplified.com](http://seleniumsimplified.com),
* and [JavaForTesters.com](http://javafortesters.com)

You can find information on his consultancy, training and conference talks at:

* Compendium Developments Ltd [compendiumdev.co.uk](http://compendiumdev.co.uk).

Follow him on twitter as [@EvilTester](http://twitter.com/eviltester)

## A Commonsense Guide to Risk

![Slide 4](../images/slide-04.png)

I want to get across the model that I have for risks, which is that risks are “beliefs” and a result of our beliefs. We believe some things will go wrong more than others. And because our beliefs are limited but the range of risks is not, we need to somehow go beyond our beliefs and look at tools and processes for doing that.

Also we know that risk is important for testing. What I want to do in this talk is present risk as the underpinning and driving force behind everything we do in testing.

You can use risk to justify why you test, what you test and how you test.

![Slide 5](../images/slide-05.png)

![Slide 6](../images/slide-06.png)

A commonsense risk process is:

* Identify
* Mitigate
* Detect
* Accept

Essentially, we scare ourselves silly to 'identify' risk.

Then decide what we are going to do something about 'mitigate'.

What we are going to keep an eye out for (just in case) - 'detect'.

And what we are going to shrug our shoulders at 'accept'. But at least we know what we are prepared to live with, and can tell people if they ask.

So with the Webinar…

* Identify
* Mitigate
    * Illness – sleep more, pre-record webinar just in case
    * Forget – presenter notes, practice
    * Broadband – give slides to host
    * Computer crash – multiple computers
    * Power cut – battery, UPS
    * Phone – landline, mobile
* Accept
    * Boredom, Drop out (partially mitigate with presentation style and some images, roughly 1 slide every 33.8 seconds to keep interest up)
* Detect
    * Have computer watching webinar – risk: impacts Mbps

If I try to detect by having another computer 'watch' the webinar then there is a risk that that increases the bandwidth used and slows down the webinar. (So that 'detction' process creates a RISK).

![Slide 9](../images/slide-09.png)

A simple risk process is to 'fear everything'. If there is something in your system that you do not have anything to fear about it, then you haven't identified enough risk.

Risk Management Process Simplified.

![Slide 10](../images/slide-10.png)

Risk that form becomes a spam magnet by bots.

Impact – I have to deal with a lot of spam in my inbox.

Mitigation -  Add Captcha to contact form.

Risk – no-one contacts me because of the captcha.

![Slide 11](../images/slide-11.png)

When contact form becomes a spam magnet by bots
I have to deal with a lot of spam in my inbox.

*And* I know that the website is still up and running and don’t have to use an uptime checker and visit the site to check reports and see if my site is still running.

Spam saves me a fortune in maintaining automated scripts to monitor my website.

![Slide 12](../images/slide-12.png)

We view risk as a ‘bad’ thing

If we can model it differently we can use it as an opportunity to expand the scope of what we test and how we conduct process improvement.

## Risk and Testing

![Slide 13](../images/slide-13.png)

Regression testing is not a risk mitigation. It is often a process added to a test approach without even having a 'risk' profile. It is most often something we do, because we are testing. Rather than something we do because we are trying to mitigate risk.

If we seriously wanted to mitigate regression risk we would use a QA process, not a testing process.

You probably already use risk in your testing.

* Business Risk
* Project Risk
* Functional Risk

Typical Risk Modeling: Business Risks

e.g.

* We might run out of funding
* Our requirements might be wrong
* We might be hit by a regulatory requirement

Less likely to be used for testing

We usually mean project and functional risk:

![Slide 16](../images/slide-16.png)

![Slide 17](../images/slide-17.png)

![Slide 18](../images/slide-18.png)

Very easy to spend a lot of time trying to:

* Quantify probability
* Quantify Impact
* Use a ‘formula’ for deciding’ priority

To avoid (and because of fear of…)

* Deciding what to focus on in case we
* Choosing the wrong thing
* Picking the wrong risk
* Blame

Technical knowledge might allow you to prioritise differently.

Risk in using a formal risk process that you paralyse your process.

![Slide 19](../images/slide-19.png)

ISTQB "Risk-Based Testing"

"An approach to testing to reduce the level of product risks and inform stakeholders of their status, starting in the initial stages of a project. It involves the identification of product risks and the use of risk levels to guide the test process."

http://www.astqb.org/glossary/search/risk-based%20testing

![Slide 21](../images/slide-21.png)

![Slide 22](../images/slide-22.png)

"…It involves the identification of product risks…"

What is a Product Risk?

"A risk directly related to the test object."

What is a Test Object?

"The component or system to be tested."

Oh! They mean:

"A risk directly related to … the component or system to be tested"

![Slide 23](../images/slide-23.png)

![Slide 24](../images/slide-24.png)

![Slide 25](../images/slide-25.png)


## Process Risk

System "of" Development:

* How we develop software
* What is our process?
* What are our skills?
* What tools do we use?
* etc.

The way we develop software opens us up to different types of risk.

And that is why we adopt different approaches in how we test.

![Slide 28](../images/slide-28.png)

![Slide 29](../images/slide-29.png)

![Slide 30](../images/slide-30.png)

We have to model the System "of" Development.

And build a test process that fits the development process.

If we don’t build the process around risk then we build it based on our model of what ‘testing’ is and is for. And there is a risk that we ignore the development process as a result.

![Here is a hypothetical ‘modern’ development approach](../images/slide-31.png)

![Slide 32](../images/slide-32.png)

We write stories

* We don’t like to write things down & rely on conversation
    * Risk of misunderstanding
        * Mitigate by capturing (‘writing down’) main acceptance criteria using Gherkin
    * Risk of delay as we can’t automate the Gherkin in the sprint
        * Mitigate by estimating the Gherkin better
        * Mitigate by Adding Automate Gherkin in ‘done’ criteria
        * Mitigate by Making ‘automate Gherkin’ a task in tech debt
    * Risk of waste because we discuss very early and add to a backlog
        * Mitigate by discussing ‘epics’ early, then breaking down to stories nearer the time they are used
* etc.

![Slide 33](../images/slide-33.png)

* We write stories
* We don’t like to write things down & rely on conversation
* Risk of misunderstanding
    * Discuss ‘test ideas’ during story elaboration
    * Write test ideas in story description (add to as understanding grows)
    * Track exploratory testing performed so it can be reviewed as part of story ‘done’
* Risk of waste because we discuss very early and add to a backlog
    * Exploratory testing rather than a lot of upfront test design
* Risk Acceptance criteria might be incomplete
    * Use exploratory testing to go beyond acceptance criteria
    * Risk Exploratory Testing might take too long
    * Explore in small chunks, review when finished, decide what else to do
* Risk exploratory testing might test wrong things
    * Agree high level test areas prior to exploring

When a ‘test approach’ is not working. You know:

* Complaints
* Issues
* Lack of time
* etc.

Perhaps some ‘risks’ with the process have manifested.

Perhaps the process isn’t fit for purpose and is now a project risk.

![Slide 34](../images/slide-34.png)

The same views and analysis we use on "Systems Under Test" we can use on "System of Development" to identify risk, detect manifestation and take steps to improve our process.

Accept and 'test' for the impact.

## Changing Process is a Risk

But if we already know it doesn’t work how can we justify not changing?

Process based focus makes it easy to justify not changing – because it is the process.

Risk based focus makes it harder to say we won’t mitigate.

* We have to learn something new
* Learning involves making mistakes
* We can’t afford mistakes because that will take time
* What if we choose the wrong process?
* A different process might make things worse

![Slide 36](../images/slide-36.png)

A slightly different model of risk

Ultimately we are talking about beliefs.

* What do I believe might go wrong?
    * Likelihood based on our model of the world
* What do I believe would happen if it did?
    * Impact
* Why do I believe that is important?
* How will I know if it happens?

![Slide 37](../images/slide-37.png)

![Slide 38](../images/slide-38.png)

Not enough time means we don’t have to ‘finish’ the automated execution code, so we never have to improve our programming skills, and we never have to make the execution robust, so we track it as Tech Debt.

Not enough time means we only have to test the acceptance criteria so we don’t have time to understand the technology so we don’t test at a technology level and so I don’t have to learn things that look hard.

![Slide 39](../images/slide-39.png)

Options are limited by our model of the world and the system.

We need to expand our options.

We will probably still focus on our beliefs…

What else can we use? - imagination.

## How does “risk” lead to exploratory testing

I believe:

* The more complicated a system and process the more points of failure it has and the more risk that something can go wrong.

e.g. ‘Agile’ can be viewed as an attempt to simplify software development process

We want to simplify the ‘process’ as much as we can. Build the process based on risks and mitigate the risk as we go.

Exploratory testing has a simpler ‘process’, but greater reliance on the skills and knowledge of the tester

![Slide 41](../images/slide-41.png)

If you had no test process and designed one based on risk, it might look like exploratory testing.

From a common-sense perspective we would ask questions and express our concerns.

Risk: We have coded something, but don’t know how to test it

Mitigate: What is the code supposed to do? Use it. See if it does. And collate enough evidence to say if it does or doesn’t.

Mitigate: Who is going to use it? How? Do what they would do, see if the system does it, and tell people if it does or doesn’t.

Mitigate: What data does this process? What is it supposed to generate as output? Feed the data in, see if it processes it and gets the output,


This can be derived from risk, or use the questions to identify the risk we are targetting:


The questions can be based on our understanding of the thing in its context and identifying risks of how it first in that context.

Risk: We have coded something, but don’t know how to test it

Risk: It might not work

Mitigate: What is the code supposed to do? Use it. See if it does. And collate enough evidence to say if it does or doesn’t.

Risk: It doesn’t meet the user’s needs

Mitigate: Who is going to use it? How? Do what they would do, see if the system does it, and tell people if it does or doesn’t.

Risk: It doesn’t process the resources it is supposed to?

Mitigate: What data does this process? What is it supposed to generate as output? Feed the data in, see if it processes it and gets the output, …

Then we would improve the process by looking at other risks:

* Risk that we haven’t tested enough
    * Agree high level conditions, review the conditions before we start, review the work
* Risk that we can’t tell people what we did
    * Learn to take notes, communicate what we do, collate reports in a searchable form
* Risk that we can’t plan it because we don’t know what we’ll test
    * agree a time constraint, work in small chunks, prioritise coverage, adjust based on review of the output
* etc.

We start to build up a Testing process based on the risk and it looks like an exploratory process.

At least it does, when I do it, given my beliefs about processes.

Because the initial risks and mitigation we create will be based on our models which are based on our beliefs.

The previous example started to look a bit like James Bach’s SFDPO mnemonic (FDO). Structure, Function, Data, Platform, Operations.

## Towards a Model of Technical Testing

What follows is a ‘worked example’

As we go through this:

* Do you have the technical knowledge to use the increasing technical information that arises.
* Can you spot gaps in the coverage based on your technical understanding of the application?
* What tools would you need to help you cover the gaps and exploit the technical information?

![Slide 44](../images/slide-44.png)

![Slide 45](../images/slide-45.png)

But obviously that is not enough… we would question the acceptance criteria and want more information about the requirement

![Slide 46](../images/slide-46.png)


How often can a user try to login? 10 times, tracked by JS in a cookie

Hopefully the user does not exist message is same as the password wrong message otherwise can check for emails existing.

Username & Password have JS validation for length, is blank, chars used.

But obviously that is not enough… we would want to explore the input from a non-domain perspective and browser perspective.

![Slide 47](../images/slide-47.png)

Switch off JavaScript to bypass JavaScript front end validation.

But obviously this is not enough…

![Slide 48](../images/slide-48.png)

![Slide 49](../images/slide-49.png)

![Slide 50](../images/slide-50.png)

![Slide 51](../images/slide-51.png)

![Slide 52](../images/slide-52.png)

![Slide 53](../images/slide-53.png)

![Slide 54](../images/slide-54.png)

Basic Requirements...

Expanded via questioning to cover our understanding of the ‘login’ domain (discovered some ‘technical’ information – JS, Cookies)...

Expanded to cover a basic understanding of the platform and input form (incorporated some ‘technical’ information about HTML, maxlength, JS validation)...

Expanded to cover risks from a basic understanding of the structure of the application which were not mentioned in requirements or from questioning the requirements...

*What are the risks of doing this?*

* we don’t have the skills
* we don’t have the inclination
* our staff don’t want to learn
* we don’t have the time to learn
* we do technical stuff and ignore the ‘requirements’
* we don’t have the tools
* we are not allowed to use the tools
* we can’t ‘sell’ this to our managers

We can deal with this, we just have to decide if these are important enough to mitigate.

*What are the risks of not doing this?*

* Risk that we miss entire areas of errors in our testing.
* Risk that no-one reviews the system at this level of technical details.


The errors that can slip through, can be system threatening.

The easiest place to do this type of testing is through exploratory testing.


*How can we do this?*

You can use all the various mnemonics and ‘heuristics’ that are out there, to expand your analysis of the system.

http://www.qualityperspectives.ca/resources_mnemonics.html

Or you can Work from ‘first principles’.

* Build system and technical models
* Analyse the model for gaps and risks

Both require that you increase your technical knowledge:

* To work from first principles to build a model and identify gaps in your knowledge and identify risks
* To gain maximum value from the mnemonics because they help you explore your model

*Simple decisions*

* Are you prepared to increase your technical knowledge?
* Are you prepared to put in the time and effort to learn more?

Where You == You / Your Company / Your Manager / Your Project

*You don’t have to know everything*

You can't!

"If  learn in small chunks, you apply what you learn, during your testing, then you will keep learning and keep your knowledge up to date.
"

* Start small
* Learn a little every (day/week/month)
* Apply the knowledge in your testing
* You will never learn everything.
    * You can’t.
* You will have to keep learning.
    * The more you learn the more you realise you don’t know.
* You will have to keep your knowledge up to date
    * Because things change.


![Slide 60](../images/slide-60.png)

![Slide 62](../images/slide-62.png)

## On Management

![Slide 63](../images/slide-63.png)

It is always an individual’s choice to improve their technical skills.

But a manager’s job is to manage risk. They can decide to take action to mitigate the risk that there are gaps in testing caused by a lack of technical focus regardless of their technical knowledge.


* Do any issues or problems slip through the net?
* Ask team to explain their models of the system
* What risks do people target – are there any technical risks?
* Do they understand the technology they are testing?
* Ask people what is missing in their model?
    * What is the next level down in their model?
    * Do they understand that level?
* Identify next steps for expanding the model
    * Who to speak to, identify books that can help, web searches on the technology
* Make learning and sharing learning part of the team process
    * Team members can demonstrate existing tools and skills

## Conclusions

We test systems to the level that we understand them enough to observe their behaviour and compare it to our model of how we think it should behave.

We test systems at the places where we can manipulate them.

We test systems to the level that we can interrogate them to understand the data that they process and produce.

Expanding our technical knowledge expands:

* Our models
* Our ability to observe
* Our ability to reflect on gaps and risks
* Our ability to interrogate the system
* Our ability to manipulate the system
* *Our ability to test*

And the risk of not doing that, is not one I’m prepared to take.

## Related resources

* http://www.developsense.com/blog/category/risk/
* http://www.slideshare.net/profmcgill/risk-analysis-for-dummies
* http://www.astqb.org/glossary/search/risk
* Heuristic Risk Based Testing http://www.satisfice.com/articles/hrbt.pdf
* http://www.satisfice.com/blog/archives/category/risk-analysis
* https://www.cmcrossroads.com/sites/default/files/article/file/2014/A%20Risk-Based%20Test%20Strategy.pdf
* http://kaner.com/pdfs/QAIRiskBasics.pdf
* https://en.wikipedia.org/wiki/Risk
* http://www.qualityperspectives.ca/resources_mnemonics.html


## About the Author

Alan Richardson has worked in Software Development with a testing perspective for over 20 years. He has worked as a programmer, tester, test manager and now works as an independent test consultant helping organisations improve their agility, technical skills and testing processes. Alan is the author of the books "Dear Evil Tester", "Java For Testers" and "Selenium Simplified"; he has also created online training courses on technical web testing, Java and Selenium WebDriver. Alan blogs at eviltester.com, seleniumsimplified.com, and JavaForTesters.com; you can find information on his consultancy, training and conference talks at compendiumdev.co.uk. Follow him on twitter as @EvilTester

Copyright Compendium Developments Ltd 2016

Websites and blogs:

* [EvilTester.com](http://eviltester.com),
* [seleniumsimplified.com](http://seleniumsimplified.com),
* and [JavaForTesters.com](http://javafortesters.com)

You can find information on his consultancy, training and conference talks at:

* Compendium Developments Ltd [compendiumdev.co.uk](http://compendiumdev.co.uk).

Follow him on twitter as [@EvilTester](http://twitter.com/eviltester)
