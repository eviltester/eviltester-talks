# Technical Testing - Preparation Notes

Prepared abstract, scope notes, research, and examples from the working document. The earlier working title is retained. The separate [prepared script](prepared-script.md) contains the later talk narrative. These are preparation materials, not a transcript. The copied email discussion and submission deadlines are omitted.

## Blurb:

Sigist March 2011

Title: Ever Learning, The Path of the Technical Tester

Blurb:

Can testers still coast by with a few techniques, and a few buzzwords? Can testers still survive by producing endless pages of tests without executing them and relying on the project getting canned after a few years? In some companies they possibly still can, but not for very much longer, Alan Richardson will explain why.

Software Development changes constantly. Software Testing needs to change too. The ‘Test’ no longer remains the sole property of the ‘tester’. Developers and business analysts can write automated requirement tests numbered in the thousands without any help from testers. Testers need to evolve their role and approach. By adopting more technical approaches testers can add value that no-one else on the development team does.

The ‘tester’ needs to work quickly, to learn to approach the system technically as well as from the requirements domain. The ‘technical tester’ comes armed with tools, and the ability to construct their own tools. Able to strip the application down to its basics. Able to hone in on technical risk and exploit it. Ah, you ask, is it really possible to learn this dark art? Are these terrible secrets available for anyone to use? No, we say, not just anyone. For, only to those that attend this talk will Alan explain the approaches he uses to do this.

Of course, Alan will describe some of the free and open source tools he currently uses to approach testing technically. But this is no mere “Bluffers guide to Technical Testing”. You will get more than just a simple list of tools and tool types.

More importantly will Alan will explain some of the mind sets, models, and techniques that form his general technical testing model, including:

- Learn the traditional testing concepts that stop you testing technically

- How to get more from your testing books than they ever intended to tell you

- How to build test techniques from first principles

- How to quickly build a map

- How to use the difference between map and territory to improve your testing

- The Ying and Yang of technical testing: Observe and Manipulate

Attendees will leave with an understanding of the need for, and the pragmatics of, technical testing . And a solid set of next actions and research topics leading them towards the path of increasing technical skill.

## Scope Ideas Outline Thoughts:

- Traditional testing concepts that stop you testing technically
    - black box/white box
        - makes ‘lazy’ modelling an acceptable technique
        - stops you thinking systemically
        - there is a system, parts of which you know more about the terrain than the map than others, others you only know the map. but there are different degrees of knowledge about the terrain and different levels of map. Think with systems, not boxes.
        - I use those terms ironically to describe me when I test lazily and fall into the ’old’ patterns of testing that I was brought up on
    - Functional/Non-functional testing
        - Both are ‘requirements’ testing
        - We are hard wired with word definitions. Misusing them ‘non-functional testing’ doesn’t help you think clearly.
        - I hate having to communicate testing using these words.
        - Functional - something that works, Non-functional - something that doesn’t (in the way it was intended) i.e. that hard drive is non-functional - that’s not a hard drive, that’s my hammer.
        - Non-functional testing then is....???
        - Why would you define non-functional requirements?
        - People waste years of their life in this are defining poxy requirements that no-one implements (I want it fast, how fast exactly? I’ll sack you if its slow - just make it fast OK)

- +ve, -ve testing
    - lazy thinking
    - +ve (non-error testing)
    - -ve (error handling testing)
    - error handling testing should be +ve testing
    - -ve testing is... ? f\*ck knows
    - what does this mean?
        - paths we expect to work
        - paths we expect to reveal an error in the application?
        - No, often it means test stuff, test error handling for stuff
    - Build better and clearer models than this!
    - Given an input field that accepts a date of birth formatted dd/mm/yyyy and displays an error if the date does not validate against mm(01 -12), dd(01-31, with correct number based on mm, and yyyy (leap years)).
        - what is -ve testing? we already know that ‘displays an error’ is a requirement, is requirement testing -ve testing?
    - Possible alternatives, risk based (from what? the technical implementation)

- How to get more from your testing books than they ever intended to tell you
    - Assume that all testing books are out of date
    - Rephrase and generalise the technique or description
    - Find the underlying principles
    - Google for new ways of doing the underlying principles
    - e.g.
        - interviewing technical testers for web testing
        - I ask how candidate can test a drop down box where all the items in the drop down box are part of the same equivalence category for the submit path on the form
            - many of them include the browser terrain in the test scope
                - e.g. up and down arrows, initial letter keys etc.
                - which might be fine if they recognise it is browser terrain and disassociate it from the web app
            - after exercising all the obvious answers I’ll ask how they can choose a value not listed in the drop down box
            - some of them tell me they will save the page to a file and amend it, then load it back into the browser.
                - Because this is listed in “How to break web software”, which is out of date, that is what we used to do, but we have other ways now e.g. Firebug, out of box functionality in Opera and Chrome
    - So generalise and spot patterns.
    - Lee Copelands book on test techniques starts with boundary value analysis and equivalence partitioning as test design approaches, then later covers domain analysis. I generalise BVA and Equivalence Partitioning into Data Domain Analysis and Modelling with Ordered Sets
- Technical Testing is not hacking
    - I used to tell people to learn hacking if they want to learn technical testing
    - I think that is good, but flawed, advice
    - Hacking and technical testing are different
    - How to Break Web Software has some good examples to help illustrate the difference
        - SQL Injection is not a ‘test technique’ it is a ‘Hacking Technique’. It is a known technique for exploiting a specific risk in apps that communicate with a DB. You may or may not choose to use it in your testing.
        - The general principle that SQL is based on is a test approach. “impact of data may change, as it flows through the system”. SQL Injection is a specific instantiation of this, or other possible generalisations in this area.
        - As technical testers we want the generalisations, and need to know instantiations of them. But if we just have the instantiations then we are bluffing our way through.
    - The hacking literature is an excellent source of building those generalisations and learning the technology that we test against. So do learn hacking, but make sure you Generalise.
- How to build test techniques from first principles
    - Model
    - Possibilities and options
    - Observe
    - Manipulate
    - This is the only good reason I can think of for getting someone to test a ‘spoon’ or a ‘pen’. It forces them to build new techniques, becuase they haven’t read the “Bluffers Guide to Spoon Testing” (possibly written by Ian Rowland or Guy Bavli)
- The old software development terrain and how we got away with crap testing
    - Everyone hated testing (process and people)
        - I was around then, so I know, and it wasn’t just me - I’m a likeable guy
    - Waterfall
    - ‘Traditional’ software testing strategies evolved from crap software development practices
    - Build a Systems effects and flow model to illustrate
- The new development terrain and why technical testing is essential
    - We can’t get away with ‘it’ any more
    - We have learned that Waterfall doesn’t mean we have to act badly - although interpretations around ISEB and standards seem to lead people to the same old conclusions
    - Agile
    - TDD
    - Build a systems effects and flow model to illustrate
- What about business/requirements testing?
    - I assume every tester can do that and has learned the basics of test analysis and business domain/requirements testing.
    - This is on top of that
    - Technical testers build on these skills
- Cross discipline metaphors to guide technical testing
    - Technical Testing like magic/magick
        - Anthropomorphic/magickal thinking
            - The system doesn’t want you to know how it works, or prodding about with it, to understand its motivations or reasons
        - Misdirection
            - Be Aware of the possibility of misdirection
            - Ignorance of the law is no excuse
- Mindsets
    - Map &amp; Territory
    - Map - model
    - Territory - actual
        - Territory is physical and can be changed
- Techniques and Tools of a technical tester
    - MAP
    - Understand the system architecture
        - Draw it up
            - graphviz?
        - Research it
            - Make Notes
                - Freemind
                - Leo
        - Identify test approaches
        - Identify coverage areas
    - Understand the technologies in use
        - Make a list
        - Google research
        - Speak to devs
        - Try and work with the technologies
        - Identify impact/benefits for testing
        - identify known vulnerabilities
    - TERRITORY
    - Understand the implementation techniques
        - use of cookies
        - ajax
        - etc.
    - Find ways to observe the system
        - Based on technology and architecture
    - Find ways to manipulate the system
    - find ways to manipulate the flow of information
    - Find ways to enter the communication flow at different levels
    - Find ways to automated the system
    - Identify tools to help
    - Differentiate between Environment terrain and application terrain
        - A system exists at multiple levels
        - Web app, lives in a browser (so some functionality is associated with the browser terrain and not the web app terrain)
            - We don’t need to ‘test’ the browser functionality
            - We might associate ‘risk’ with the differences between how browsers implement this functionality, so we might want to exercise the difference. But because it is based on ‘risk’ and not ‘functionality’ you dont have to repeat it for every web app version, but for different browser versions
- Actual tools of a technical web tester In Action
    - Proxies
        - Fiddler
        - Burpsuite
        - WebScarab
    - Test Data
        - Benerator
        - PerlClip
    - Programming
        - language of the dev team
        - scripting languages
    - Database access
    - Automation
        - JMeter
        - Selenium
    - Adhoc Automation
        - curl
- 5 Whys
    - why takes you away from the problem
    - how takes you closer
- Summary - recruitment push, plug book

## Sections:

Harmful Mental Models

- test techniques
    - stop thinking techniques
        - leads to technique coverage
            - bva, equiv partitioning, combinatorial analysis
    - start thinking risk, model coverage (techniques: domain analysis, structural analysis (state, flow (process, data)))

## Books on technical testing:

How to Break X

These deconstruct the thought processes into ‘case studies’, need to reverse engineer the thought processes.

Test Techniques considered harmful

technique coverage

if you stopped using techniques, what would you do?

start from scratch - how?

depends - what am I trying to do?

model building to help answer question

## Web Example

business testing: user does X on web app, appears in DB

actual: user, in browser, runs javascript, communicates to server, server does stuff, writes to DB (or other systems), sends response to browser

lots of risk points, not visible in the ‘business’ testing. Technical testing covers these bits.

## how to Break Web Software

An example of how to go meta and learn what the books don’t tell you.

“How to get more from your testing books than they ever intended to tell you”

Attack 1 - Panning for gold

find ways to observe system

(mentions: paros, IEHTTPServer, grep, ‘The regulator’)

proxy servers

burpsuite

builds a site map

know how to interpret and use observations (what to look for)

‘leaked’ information

comments in source code

sensitive information

error messages

urls

ip addresses

sql

DB Connection strig

Attack 2 - Guessing Files and directories

(tools mentioned: iDefence)

default locations

use generated ‘site map’ for

gaps

guess subdomains (e.g. admin)

Attack 3 - vulnerabilities in sample applications

(tools mentioned: Nikto)

‘leaked’ information leads to ‘known vulnerability’ search

patterns

Attack 4 - bypass restrictions on input choices

(out of date chapter)

interrupt communication flow

amend gui - javascript, validation html etc.

in browser using firefox, or proxy to filter out

Attack 5 - bypass client side validation

amend javascript

hack hidden fields

Attack 6 - Hidden fields

(out of data approach using src file saving)

amend in situ

amend via proxy

Attack 7 - CGI Parameters

url params ?...&amp;...&amp;

amend them

parameter guessing e.g. &amp;debug=on etc.

Attack 8 - cookie poisoning

(out of date - amends cookies in file)

just amend in situ in requests or in browser - firecookie etc.

Attack 9 - Url Jumping

model flow

interfere with flow

easy to do with proxy message replay

Attack 10 - Session Hijacking

\[generalise cookie, session as “static/session payload amends”\]

Attack 11 - cross-site scripting

a technical vulnerability to be aware of - doesn’t really help your testing

Attack 12 - SQL Injection

a technical vulnerability to be aware of - doesn’t really help your testing

Attack 13 - Directory traversal

use other pages to display each other i.e. pass page name as a param to a page that displays info

traverse directories to find other items

../

Attack 14 - Buffer Overflows

(tools mentioned: spikeproxy)

a technical vulnerability to be aware of - doesn’t really help your testing

Attack 15 - canonicalization

encoding data to bypass controls

still a useful and underused technique

Attack 16 - null-string attacks

Attack 17 - SQL Injection 2 - stored procedures

Attack 18 - Command Injection

Attack 19 - Fingerprinting the server

generalise as duplicate of “Attack 3 - vulnerabilities in sample applications”

mentions (securityfocus.com, osvdb.org)(foundstone sitedigger)

Attack 20 - Denial of service

long running queries

slow bandwidth

Attack 21 - Fake cryptography

Attack 22 - Breaking Authentication

(mentions hoobie.net/brutus) [Source link](http://www.google.com/url?q=http%3A%2F%2Fhoobie.net%2Fbrutus%29&sa=D&sntz=1&usg=AFQjCNFaBg-LvTM_UMP4zNh2T_WmzWal6Q)

Attack 23 - cross-site tracing

Attack 24 - forcing weak cryptography

## Tools:

alternative text editor

nikto

wikto

stunnel

wget

curl

paros (proxy tool)

spike proxy

ssldigger

## What is Technical Testing?
