# Speaker Notes — Released Webinar

These are the original embedded preparation notes, not a transcript or evidence of live delivery. Slide numbers refer to this 70-slide release deck.

## Slide 4 — Everyone is already familiar with risk…

I want to get across the model that I have for risks, which is that risks are “beliefs” and a result of our beliefs. We believe some things will go wrong more than others. And because our beliefs are limited but the range of risks is not, we need to somehow go beyond our beliefs and look at tools and processes for doing that.

Also we know that risk is important for testing. What I want to do in this talk is present risk as the underpinning and driving force behind everything we do in testing.

You can use risk to justify this stuff

## Slide 7 — Commonsense Risk Process

Identify – scare yourself silly

## Slide 9 — Risk Is…

Fear everything

## Slide 10 — Risk Example: Contact Form on Web Site

Risk that form becomes a spam magnet by bots

Impact – I have to deal with a lot of spam in my inbox

Mitigation

Add Captcha to contact form

Risk – no-one contacts me because of the captcha

## Slide 11 — Opportunity: Contact Form doubles as Web Site is ‘up’ checker

When contact form becomes a spam magnet by bots

I have to deal with a lot of spam in my inbox

And I know that the website is still up and running and don’t have to use an uptime checker and visit the site to check reports and see if my site is still running.

## Slide 12 — Risk &amp; Opportunity

We view risk as a ‘bad’ thing

If we can model it differently we can use it as an opportunity to expand the scope of what we test and how we conduct process improvement.

## Slide 18 — Priority and Probability Procrastination for Project Head Person Protection

Very easy to spend a lot of time trying to

Quantify probability

Quantify Impact

Use a ‘formula’ for deciding’ priority

To avoid (and because of fear of…)

Deciding what to focus on in case we

Choosing the wrong thing

Picking the wrong risk

Blame

Technical knowledge might allow you to prioritise differently

Risk in using a formal risk process that you paralyse your process

## Slide 22 — ISTQB Risk Based Testing

Also mention:

“…It involves the identification of product risks…”

Product Risk

“A risk directly related to the test object.”

Test Object

“The component or system to be tested.”

“A risk directly related to … the component or system to be tested”

## Slide 30 — Process &amp; Culture Clash Risk

We have to model the System “of” Development

And build a test process that fits the development process

If we don’t build the process around risk then we build it based on our model of what ‘testing’ is and is for. And there is arisk that we ignore the development process as a result.

## Slide 31 — Process as a System

Here is a hypothetical ‘modern’ development approach

## Slide 32 — Process Risk

We write stories

We don’t like to write things down &amp; rely on conversation

Risk of misunderstanding

Mitigate by capturing (‘writing down’) main acceptance criteria using Gherkin

Risk of delay as we can’t automate the Gherkin in the sprint

Mitigate by estimating the Gherkin better

Mitigate by Adding Automate Gherkin in ‘done’ criteria

Mitigate by Making ‘automate Gherkin’ a task in tech debt

Risk of waste because we discuss very early and add to a backlog

Mitigate by discussing ‘epics’ early, then breaking down to stories nearer the time they are used

…

etc.

## Slide 33 — Risk Driven Process

We write stories

We don’t like to write things down &amp; rely on conversation

Risk of misunderstanding

Discuss ‘test ideas’ during story elaboration

Write test ideas in story description (add to as understanding grows)

Track exploratory testing performed so it can be reviewed as part of story ‘done’

Risk of waste because we discuss very early and add to a backlog

Exploratory testing rather than a lot of upfront test design

Risk Acceptance criteria might be incomplete

Use exploratory testing to go beyond acceptance criteria

Risk Exploratory Testing might take too long

Explore in small chunks, review when finished, decide what else to do

Risk exploratory testing might test wrong things

Agree high level test areas prior to exploring

When a ‘test approach’ is not working

Complaints

Issues

Lack of time

etc.

Perhaps some ‘risks’ with the process have manifested

Perhaps the process isn’t fit for purpose and is now a project risk

## Slide 34 — Process Risks Are System Risks

The same views and analysis we use on “Systems Under Test” we can use on “System of Development” to identify risk, detect manifestation and take steps to improve our process.

Accept and ‘test’ for the impact.

## Slide 35 — Changing Process is a Risk

Process based focus makes it easy to justify not changing – because it is the process

Risk based focus makes it harder to say we won’t mitigate

We have to learn something new

Learning involves making mistakes

We can’t afford mistakes because that will take time

What if we choose the wrong process?

A different process might make things worse

## Slide 36 — Beliefs

A slightly different model of risk

Ultimately we are talking about beliefs

What do I believe might go wrong?

Likelihood based on our model of the world

What do I believe would happen if it did?

Impact

Why do I believe that is important?

How will I know if it happens?

## Slide 38 — Hypothetical Examples of Secondary Gain

Not enough time means we don’t have to ‘finish’ the automated execution code, so we never have to improve our programming skills, and we never have to make the execution robust, so we track it as Tech Debt.

Not enough time means we only have to test the acceptance criteria so we don’t have time to understand the technology so we don’t test at a technology level and so I don’t have to learn things that look hard.

## Slide 39 — Testing must not be limited by our beliefs

Options are limited by our model of the world and the system

We need to expand our options

We will probably still focus on our beliefs…

What else - imagination

## Slide 40 — How does “risk” lead to exploratory testing

I believe

The more complicated a system and process the more points of failure it has and the more risk that something can go wrong

E.g. ‘Agile’ can be viewed as an attempt to simplify software development process

We want to simplify the ‘process’ as much as we can. Build the process based on risks and mitigate the risk as we go.

Exploratory testing has a simpler ‘process’, but greater reliance on the skills and knowledge of the tester

## Slide 41 — How does “risk” lead to exploratory testing

If you had no test process and designed one based on risk, it might look like exploratory testing

From a common-sense perspective we would ask questions and express our concerns.

Risk: We have coded something, but don’t know how to test it

Mitigate: What is the code supposed to do? Use it. See if it does. And collate enough evidence to say if it does or doesn’t.

Mitigate: Who is going to use it? How? Do what they would do, see if the system does it, and tell people if it does or doesn’t.

Mitigate: What data does this process? What is it supposed to generate as output? Feed the data in, see if it processes it and gets the output,

## Slide 42 — How does “risk” lead to exploratory testing

If you had no test process and designed one based on risk, it might look like exploratory testing

The questions can be based on our understanding of the thing in its context and identifying risks of how it first in that context.

Risk: We have coded something, but don’t know how to test it

Risk: It might not work

Mitigate: What is the code supposed to do? Use it. See if it does. And collate enough evidence to say if it does or doesn’t.

Risk: It doesn’t meet the user’s needs

Mitigate: Who is going to use it? How? Do what they would do, see if the system does it, and tell people if it does or doesn’t.

Risk: It doesn’t process the resources it is supposed to?

Mitigate: What data does this process? What is it supposed to generate as output? Feed the data in, see if it processes it and gets the output, …

## Slide 43 — How does “risk” lead to exploratory testing

We start to build up a Testing process based on the risk and it looks like an exploratory process

At least it does

when I do it

given my beliefs about processes

Because the initial risks and mitigation we create will be based on our models which are based on our beliefs

The previous example started to look a bit like James Bach’s SFDPO mnemonic (FDO). Structure, Function, Data, Platform, Operations

## Slide 44 — Basic System

What follows is a ‘worked example’

As we go through this:

Do you have the technical knowledge to use the increasing technical information that arises.

Can you spot gaps in the coverage based on your technical understanding of the application?

What tools would you need to help you cover the gaps and exploit the technical information?

## Slide 45 — Risk: Basic Acceptance Criteria is not enough

But obviously that is not enough… we would question the acceptance criteria and want more information about the requirement

## Slide 46 — Mitigate risk of missing Acceptance Criteria

How often can a user try to login? 10 times, tracked by JS in a cookie

Hopefully the user does not exist message is same as the password wrong message otherwise can check for emails existing.

Username &amp; Passoword have JS validation for length, is blank, chars used

But obviously that is not enough… we would want to explore the input from a non-domain perspective and browser perspective.

## Slide 47 — Mitigate limited coverage of business domain to cover web page structure and platforms

Switch off JavaScript to bypass JavaScript front end validation

But obviously this is not enough…

## Slide 54 — How did we get to this?

Basic Requirements

Expanded via questioning to cover our understanding of the ‘login’ domain (discovered some ‘technical’ information – JS, Cookies)

Expanded to cover a basic understanding of the platform and input form (incorporated some ‘technical’ information about HTML, maxlength, JS validation)

Expanded to cover risks from a basic understanding of the structure of the application which were not mentioned in requirements or from questioning the requirements.

## Slide 59 — You don’t have to know everything

Start small

Learn a little every (day/week/month)

Apply the knowledge in your testing

You will never learn everything.

You can’t.

You will have to keep learning.

The more you learn the more you realise you don’t know.

You will have to keep your knowledge up to date

Because things change.

## Slide 63 — Yeah, but seriously, I’m a manager…

It is always an individual’s choice to improve their technical skills.

But a manager’s job is to manage risk. They can decide to take action to mitigate the risk that there are gaps in testing caused by a lack of technical focus regardless of their technical knowledge.

## Slide 64 — I manage seriously…

It is always an individual’s choice to improve their technical skills.

But a manager’s job is to manage risk. They can decide to take action to mitigate the risk that there are gaps in testing caused by a lack of technical focus regardless of their technical knowledge.

Do any issues or problems slip through the net?

Ask team to explain their models of the system

What risks do people target – are there any technical risks?

Do they understand the technology they are testing?

Ask people what is missing in their model?

What is the next level down in their model?

Do they understand that level?

Identify next steps for expanding the model

Who to speak to, identify books that can help, web searches on the technology

Make learning and sharing learning part of the team process

Team members can demonstrate existing tools and skills
