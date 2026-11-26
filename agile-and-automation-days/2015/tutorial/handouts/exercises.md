# Exercises for Technical Testing Tutorial

[Original PDF](../export/ExercisesForTechnicalTestingTutorialAADays.pdf)

## Introduction

Author: Alan Richardson

### Contact Alan

- http://compendiumdev.co.uk/contact
- alan@compendiumdev.co.uk

### Alan’s Web Sites

- www.eviltester.com
- www.seleniumsimplified.com
- www.javafortesters.com
- www.compendiumdev.co.uk
- @eviltester (https://twitter.com/eviltester)

This version of the document created to support:

- Agile and Automation Days, Poland, Krakow, November 2015

Copyright Compendium Developments 2015, Permission granted to use document this for personal study and self training

## Application Under Test:

Redmine

Official site:

http://www.redmine.org

Official Demo:

http://demo.redmine.org

Bitnami Install:

https://bitnami.com/stack/redmine

- Test Environments (these won’t work after the workshop):
    - http://aadaystute.bitnamiapp.com/redmine/

## Exercises for Technical Testing Tutorial

### Exercise: Recognise the Baseline

Test The Following Stories:

- 10 mins testing, however you want on ...
    - “A user should be able to register on the system and login using their registration details”
- 5 mins testing, however you want on ...
    - “A user can only login with the correct credentials, an error message is shown when invalid, this should maintain privacy”

Follow with a 10 – 15 mins debrief

### Exercise: What are your existing “Technical Skills”?

Collate and build a model of your existing technical skills.

For bonus points, identify some skills you want to develop:

- now
- short term
- medium term
- long term

### Exercise: exploration using only Browser Based Tools

Using only browser based tools, explore the system.

Quick areas that are interesting to explore:

- New issue creation
- New User Creation
- Ajax Based Filtering

### Exercise: Treat the following stories as though on an Agile Project

Treat the following stories as though on an Agile Project, discuss and plan the testing for them.

- “A user can only log in with the correct credentials, an error message is shown when invalid, this should maintain privacy”
- “A user should be able to register on the system and login using their registration details”

Does treating them like ‘proper’ stories, change your test approach?

Now test them as though they were ‘proper’ stories and identify any differences in how you approached the testing.

### Exercise: Build a Web Browser Context View Model

What risks exist at this level?

What tools could help you test at this level? How?

### Exercise: Build a Generic Web Application Model

Build a model:

- What happens where?
- What risks exist?
- What could we observe where?
- Where could we manipulate?
- What tools could you use?

### Exercise: Build a model of Redmine Web Application

Build a more specific Model:

- What technologies used?
- What risks exist?
- What happens where?
- What could we observe where?
- Where could we manipulate?

### Exercise: What technical information do you need?

From a technical perspective, what questions do we need answered to allow us to observe and manipulate this particular system?

### Exercise: Concentrate on Note Taking

Perform some more testing. But this time concentrate on your note taking.

e.g. take notes in a text document, or mind map

- Do you add timestamps?
- Do you have screenshots?
- How are you organising your notes?
- Will they work on their own, or will you need to edit them later?
- If this was an agile project, and you had to record your notes against the story, how would you do that?
- Could any tools we’ve used help with note taking or evidence gathering?

### Exploratory Learning Ideas, Areas and Suggestions

The following are ideas to help you during the “Hands on Exploratory Learning Exercises”. You are free to use your own ideas if you want.

These are:

- areas of the application you might like to test
- suggestions on parts of the technology stack to look at when testing
- suggestions for ‘types of tools’ to use, to help you when you test
- stories that you might like to test in a technical way

### Story Based

These are ‘stories’ you might want to ‘test’:

- “A user should be able to register on the system and login using their registration details”
- “A user can only login with the correct credentials, an error message is shown when invalid, this should maintain privacy”
- “When creating a new project, a new identifier must be kept in sync with the entered project name, until the user edits the identifier. All Identifier validation rules must be adhered to.”

### General Areas and Ideas for Testing and exploration

Registration

- The form seems simple enough, but is it telling you things that you should test?

General Pathologies

- Are GUI validations enforced by server correctly?

Create New Project

- Create new project with missing/extra form fields
- Create new project with field lengths larger than GUI allows
- Explore the relationship between the Name and the Identifier

Issue

- % is listed in increments of 10, is that all the system supports?

Issues

- Explore issues filtering - test @ GUI and below GUI

Ajax

- Filtering seems to use Ajax, are there any other areas of the system that do? How would you test these?

Debugging

- Try debugging some JavaScript in the application.js

API

- Can you test the system via its API?
- http://www.redmine.org/projects/redmine/wiki/Rest_api
- Suggested tool Postman (http://getpostman.com)

## Redmine Challenges & Ideas

- Set up a breakpoint in the proxy tool so that when you send a request via the GUI, you have to edit it and release it in the proxyusers/6/edit, before it is sent to the server
- Use a Fuzzer in one of the proxies to register new users (Create New Users)
    - The fuzzer in BurpSuite is the ‘Intruder’
    - I found this easier to do in BurpSuite than Zap, but it is possible to do in both
- Can you use fuzzer to make the new users Admin’s?
- Can you use the fuzzer to create new Issues for a project
- Explore the API and compare to using a proxy http://www.redmine.org/projects/redmine/wiki/Rest_api
- Can you use the API to amend a user to be an admin? http://www.redmine.org/projects/redmine/wiki/Rest_Users

## General Challenges & Ideas

### 1) Use browser features to help you do things you are not supposed to

Download the World Quality Report without entering your email details

2014 - 2015 http://on.hp.com/LP_427858_HPSW-ADM_WW_EN-US_T1_WQRRegForm

2015 - 2016 http://engage.hpe.com/LP_510011526_HPSW-ADM_WW_EN-US_T0_WQRFullReport

### 2) Experiment with adaptive vs responsive mobile sites through a browser

* https://www.national-lottery.com/ * http://www.homedepot.com/ * http://www.adidas.co.uk/

Is the site responsive - i.e. displays and shapes content based on the screen size? Or Adaptive i.e. responds to the type of device you are using?

What is the difference that makes a difference?

### 3) Use the tools in proxy and browser to check page weights

Use the tools in proxy and browser to check if the page weights and loading times are different between adaptive and responsive versions.

### 4) Audit a few live pages and see what issues you find

Do you understand the issues? If not Google them or ask.

### 5) Compare browser audit to google web dev speed tools

Using Google Chrome, compare the built in Audit in the dev tools, to the Google PageSpeed tool. Are the results different? When would you use one and not the other?

https://developers.google.com/speed/?hl=en

### 6) Compare different browser built in dev tools

Compare different browser built in dev tools:

- Firefox
- Chrome
- Safari
- IE

What do they let you observe? Manipulate? Interrogate?

Any other features that help? e.g. Mobile Simulation, Remote Debugging, etc.

### 7) Compare features of different proxies e.g. Fiddler vs OWASP ZAP, Charles vs BurpSuite

Compare features of different proxies e.g. Fiddler vs OWASP ZAP, Charles vs BurpSuite

What is missing? What is extra?

### 8) Examine the proxy tools for features that might let you test in a different way

Examine the proxy tools for features that might let you test in a different way e.g. how could you use fuzzers? find some more examples

## Research Links & Notes

### Tools

API

PostMan –

https://www.getpostman.com/

Proxy Related

BurpSuite -

https://portswigger.net/burp/ Fiddler -

- http://www.telerik.com/fiddler

Owasp ZAP -

https://github.com/zaproxy/zaproxy

Charles -

http://www.charlesproxy.com/

FoxyProxy -

https://getfoxyproxy.org/

Browser Plugins

EditThisCookie -

http://www.editthiscookie.com/

FireBug -

http://getfirebug.com/

### Computer Books and Videos

- Michael Bolton Webinar
    - A New Agile Testing Ecosystem
    - https://www.youtube.com/watch?v=LgOTi1ifJPA
- Book: Domain Driven Design by Eric Evans
    - http://dddcommunity.org/
- Book: The Web Application Hackers Handbook
    - by Dafydd Stuttard (Author), Marcus Pinto (Author)

### Topics To Investigate

- Stafford Beer viable Systems model
    - http://www.scio.org.uk/node/12
    - https://www.youtube.com/watch?v=JJ6orMfmorg
- General Semantics
- The Structure of Magic vols 1&2 by Richard Bandler and John Grinder

See

http://www.compendiumdev.co.uk/nlp

- Cybernetics
    - http://pespmc1.vub.ac.be/
    - http://www.cybsoc.org/
- Ross Ashby – Requisite Variety
    - https://archive.org/details/introductiontocy00ashb
    - https://archive.org/details/designforbrain00ashb
- Norbert Wiener
    - https://archive.org/details/NorbertWienerHumanUseOfHumanBeings
