<!-- footer: @EvilTester -->

<!-- Slide 1 -->

# “How to Improve your Technical Test Ability”

Alan Richardson

![harryLorayne HowToTest](images/harryLorayne_HowToTest.png)

EvilTester.com

SeleniumSimplified.com

JavaForTesters.com

@EvilTester

---

<!-- Slide 2 -->

# Confessions of a Technical Tester

![confessionsOfAnAdvertisingMan](images/confessionsOfAnAdvertisingMan.png)

---

<!-- Slide 3 -->

# What is Testability?

- Expanding the requisite variety of the system to support testing beyond that required by the user

![testabilityCloud](images/testabilityCloud.png)

https://www.jasondavies.com/wordcloud/#

---

<!-- Slide 4 -->

# Requisite Variety

Stafford Beer on Variety:

"the total number of possible states of a system, or of an element of a system"

- Ross Ashby “Only variety can destroy variety”
- Stafford Beer “Only variety can absorb variety”

https://www.youtube.com/watch?v=bDRudRhNgy4

---

<!-- Slide 5 -->

# Test Ability

![testability](images/testability.png)

---

<!-- Slide 6 -->

# What is Technical Testing?

![whatisTechnicalTesting](images/whatisTechnicalTesting.png)

---

<!-- Slide 7 -->

# A reminder to go deeper

- Am I testing at the deep structures of the system?
- Do I use technical risk to inform my testing?

---

<!-- Slide 8 -->

# Limiting Beliefs

![limitingBeliefs](images/limitingBeliefs.png)

---

<!-- Slide 9 -->

# If you choose not to do the work...

- You will be limited in what you can test
- You will rely on technical people on your team

---

<!-- Slide 10 -->

# Our Technical World Changes All The Time

![slide 010 our technical world changes all the time](images/slide-010-our-technical-world-changes-all-the-time.png)

tagcrowd.com

---

<!-- Slide 11 -->

# Being Technical requires constant learning of new stuff

---

<!-- Slide 12 -->

# It's hard work

So take it in in small chunks

- What technology do you work with?
- What tools do you use?
- What programming languages?
- What limits your testing?

---

<!-- Slide 13 -->

# Why do the work?

![alanRichardsonPublicSpeaking](images/alanRichardsonPublicSpeaking.png)

---

<!-- Slide 14 -->

# Why do the work?

![slide 014 why do the work](images/slide-014-why-do-the-work.png)

---

<!-- Slide 15 -->

# No, really. Why?

- To test the system more deeply
- Increase more variety into your testing
- Find errors that have escaped notice
- Improve your technical skills and knowledge
- Work more closely with developers
- Find security issues early
- Improve your testing

---

<!-- Slide 16 -->

# At long last, the Secrets of Technical Testing are Finally Revealed

![secretsOfTechnicalTesting](images/secretsOfTechnicalTesting.png)

---

<!-- Slide 17 -->

# Modelling

“We are powerfully imprisoned in these Dark Ages simply by the terms in which we have been conditioned to think.”

Buckminster Fuller,

Cosmography

http://buckyworld.me/best-bucky-books/

---

<!-- Slide 18 -->

# Modelling

- Collate your current terms and maps
- Model what you know
- Informal models
    - lists of stuff,
    - mind map brain dumps
- Research and experiment to expand the models

---

<!-- Slide 19 -->

# An early model

Server

EvilTester.com

![Original diagram and annotations: An early model](transcripts/images/aadays2015/img18.png)

---

<!-- Slide 20 -->

# Expand the Browser Model

Server

JavaScript, CSS, DOM, Browser Plugins, Dev Tools, HTML, HTML5, Images, Dynamic HTML, Async JavaScript, Local Storage, Cookies, Cache, ...

Pick a Few to Start Working With and Investigate

![Original diagram and annotations: Expand the Browser Model](transcripts/images/aadays2015/img19.png)

---

<!-- Slide 21 -->

# Expand the Message Model

Server

HTTP, Headers, Authentication, TCP/IP, Proxies, Encoding, HTTP Verbs, Responses, Response Codes

Pick a Few to Start Working With and Investigate

![Original diagram and annotations: Expand the Message Model](transcripts/images/aadays2015/img20.png)

---

<!-- Slide 22 -->

# Modelling

“...the prescription for action is not difficult to understand. First of all, we need better models of the components...”

Stafford Beer,

Designing Freedom

http://www.scio.org.uk/node/12

---

<!-- Slide 23 -->

# Explore the Models

- How can I Observe that?
    - What JavaScript files are used?
- How can I Interrogate that?
    - What CSS is applied there?
- How can I Manipulate that?
    - How can I change the HTTP message sent?
    - How can I change the HTTP status code received?

These questions help you identify tools to use

---

<!-- Slide 24 -->

# We could use tool capabilities to expand our models

- Browser Developer Tools:
    - Chrome, Firefox, IE, Safari
- HTTP Debug Proxies:
    - Fiddler, Charles, Owasp ZAP, BurpSuite
- Plugins:
    - FoxyProxy
- Network Sniffers:
    - WireShark

---

<!-- Slide 25 -->

# Observation in Browser

- DOM Rendering
    - using a browser
    - different browsers
    - Change size of window to check css resizing
    - Mobile Device Simulation

![2015 11 10 eviltester com](images/2015-11-10_eviltester_com.png)

![2015 11 10 eviltester com resized](images/2015-11-10_eviltester_com_resized.png)

---

<!-- Slide 26 -->

# Observation in Browser

- Can we observe the HTML?

![Original diagram and annotations: Observation in Browser](transcripts/images/aadays2015/img25.png)

---

<!-- Slide 27 -->

# Observation in Browser

- How else can we observe the HTML?

![Original diagram and annotations: Observation in Browser](transcripts/images/aadays2015/img26.png)

---

<!-- Slide 28 -->

# Manipulation in Browser

- Can I change the HTML?

![Original diagram and annotations: Manipulation in Browser](transcripts/images/aadays2015/img27.png)

---

<!-- Slide 29 -->

# Observation in Browser

- What else can I observe? Traffic?

![Original diagram and annotations: Observation in Browser](transcripts/images/aadays2015/img28.png)

---

<!-- Slide 30 -->

# Interrogation in Browser

- Can I see that request in detail?

![Original diagram and annotations: Interrogation in Browser](transcripts/images/aadays2015/img29.png)

---

<!-- Slide 31 -->

# Observation in Browser

- What else can I see?

I can set breakpoints too

I can see the running code and variables

![Original diagram and annotations: Observation in Browser](transcripts/images/aadays2015/img30.png)

---

<!-- Slide 32 -->

# Observation in Browser

JavaScript level performance and profiling

![Original diagram and annotations: Observation in Browser](transcripts/images/aadays2015/img31.png)

---

<!-- Slide 33 -->

# Mobile Testing Hints

![Original diagram and annotations: Mobile Testing Hints](transcripts/images/aadays2015/img32.png)

---

<!-- Slide 34 -->

# Why Observe?

- Stare in amazement as you see things you've never seen before
- Use your Google-Fu to investigate this set of unknown data with online searches
- The more you understand, the richer your model becomes, and the more you will spot

---

<!-- Slide 35 -->

# Why Manipulate?

- Change the DOM to explore boundaries the GUI doesn't normally let you
- Enter values to explore the backend validation rules
- Get rid of form elements to explore error conditions

---

<!-- Slide 36 -->

# Fill in gaps in my model

Server

All of previous stuff lives here

How can I do that here?

![Original diagram and annotations: Fill in gaps in my model](transcripts/images/aadays2015/img35.png)

---

<!-- Slide 37 -->

# Observation of HTTP Traffic

Dear Google,

How can I observe HTTP traffic?

Yours,

Alan

Hi Alan,

Check this lot out.

Love,

Google

![Original diagram and annotations: Observation of HTTP Traffic](transcripts/images/aadays2015/img36.png)

---

<!-- Slide 38 -->

# Proxies

Server

Fiddler, Charles, BurpSuite, Owasp ZAP

Proxy

FoxyProxy Browser Plugin

![Original diagram and annotations: Proxies](transcripts/images/aadays2015/img37.png)

---

<!-- Slide 39 -->

# Proxies

Server

Proxy

- Repeat Requests (Amended)
- Create New Requests
- Automatically Amend Requests
- Fuzz Requests
- Breakpoint and Amend Requests

- Observe Traffic
- Export for later analysis
- Passively Scan for Security Issues

- Amend Responses
- Simulate Server Errors
- Simulate Slow Networks
- Supply Different Responses e.g. CSS, JS

![Original diagram and annotations: Proxies](transcripts/images/aadays2015/img38.png)

---

<!-- Slide 40 -->

# Chaining Proxies

Fiddler

BurpSuite

Server

- Site Map
- Fuzzers
- Advanced Breakpoints

- Easy Config
- Insitu Scripting
- Simple Breakpoints

- Auto-responders

![Original diagram and annotations: Chaining Proxies](transcripts/images/aadays2015/img39.png)

---

<!-- Slide 41 -->

# More Mobile Testing Hints

Mobile Device

Hardware WiFi HotSpot

ZAP Proxy Running on Mac

Mobile Configured to use ZAP Proxy

Makes it easier for WireShark on Mac to sniff mobile traffic

View Mobile Traffic on Laptop

Share VPN for Geo

![Original diagram and annotations: More Mobile Testing Hints](transcripts/images/aadays2015/img40.png)

---

<!-- Slide 42 -->

# Reflection

- Own your models
    - e.g.
        - Build your own explanations of Page Objects
        - Your own models of your system
- Identify gaps in your knowledge
    - Identify Tools that help you
- Expand your Requisite Variety

---

<!-- Slide 43 -->

# Some Recent Tools I Used

- APIs – PostMan, PAW
- Plugins – EditThisCookie, FoxyProxy
- Proxies – Fiddler, Charles, ZAP, BurpSuite
- Dev Tools - Browser Dev tools, ADB (Android)
- SDK - e.g. JDK, MySQL Workbench
- Static Analysis Tools
    - Google PageSpeed Tools, FindBugs, PMD, CSS Lint, Myth (CSS)

---

<!-- Slide 44 -->

# Some Recent Tools I Used

- APIs – PostMan, PAW
- Plugins – EditThisCookie, FoxyProxy
- Proxies – Fiddler, Charles, ZAP, BurpSuite
- Dev Tools - Browser Dev tools, ADB (Android)
- SDK - e.g. JDK, MySQL Workbench
- Static Analysis Tools
    - Google PageSpeed Tools, FindBugs, PMD, CSS Lint, Myth (CSS)

But It's Not About The Tools

---

<!-- Slide 45 -->

# The Following Book Covers Were Digitally Butchered during the Making of this presentation

| Year | Original book cover |
| --- | --- |
| 1961 | ![harry 200](images/harry_200.png) |
| 1987 | ![confessions 200](images/confessions_200.png) |
| 1957 | ![daleCarnegie 200](images/daleCarnegie_200.png) |
| 1936 | ![liveSuccessfullyBook4 200](images/liveSuccessfullyBook4_200.png) |

---

<!-- Slide 46 -->

# The Following Book Covers Were Digitally Butchered during the Making of this presentation

| Year | Original book cover |
| --- | --- |
| 1961 | ![harry 200](images/harry_200.png) |
| 1987 | ![confessions 200](images/confessions_200.png) |
| 1957 | ![daleCarnegie 200](images/daleCarnegie_200.png) |
| 1936 | ![liveSuccessfullyBook4 200](images/liveSuccessfullyBook4_200.png) |

Because this is a self-help talk

---

<!-- Slide 47 -->

# The 5 Secret Keys Which Unlock Your Technical Test Ability

- Modelling
    - Observation
        - Reflection
            - Interrogation
                - Manipulation

---

<!-- Slide 48 -->

# Alan Richardson

@EvilTester

http://EvilTester.com

http://SeleniumSimplified.com

http://JavaForTesters.com

![slide 048 alan richardson](images/slide-048-alan-richardson.png)

![slide 048 alan richardson 2](images/slide-048-alan-richardson-2.png)

![slide 048 alan richardson](images/slide-048-alan-richardson.jpg)
