## SauceLabs SauceCon 2021 - Add More Security to Testing and Automating

Security Testing is a highly technical set of skills, covering a wide domain of knowledge that can take a long time to learn and gain proficiency. But there are simple ways to increase the scope of what we already do to provide more insight into the security of our application.

More details:

https://www.eviltester.com/conference/saucecon2021_conference/

A recording of the talk is available.

## Youtube Video

[![Add More Security](https://img.youtube.com/vi/5TUwdr-vfTQ/0.jpg)](https://www.youtube.com/watch?v=5TUwdr-vfTQ)

[Watch The Full Talk on YouTube](https://www.youtube.com/watch?v=5TUwdr-vfTQ)

## Content

- [slides as markdown](slides.md)
- [slides as pdf](exports/saucecon2021.pdf)

## Overview

_Security Testing is a highly technical set of skills, covering a wide domain of knowledge that can take a long time to learn and gain proficiency. We already have enough to learn with Software Testing and even more when we add in Automating. So are there any simple ways to increase the scope of what we already do, that provide more insight into the security of our application? Answer: Yes. And in this talk we will cover practical steps, dos and don'ts to add some Security focus fast, without spending years learning how to Hack applications._

Take aways:

- Security Do's, Don'ts and Risks that we need to consider for our test process
- How to add additional tooling around our existing testing and automating
- Proactive steps to improve security that are easier to adopt than learning to Hack

## Notes

This is a small section of the talk transcript that covers some of the main points.

> Security testing is incredibly interesting. It's just not the fastest way of adding more security type concerns into our process. I've spent years learning security testing. It's a highly technical set of skills, highly set of technical knowledge. We have to understand the technology.

> There's a massive wide domain of things to cover in terms of social engineering, how we use the tools, risks in applications, low level coding issues. There's always new vulnerabilities being found and there's new case studies.

>And it takes a long time to learn and practise, as does testing, as does programming. So we already have this wide range of things we're trying to learn. So do we really want to add security testing on there as well? Now, I'm not trying to put anyone off security testing because I've really enjoyed learning it.

> But there are ways of doing this faster. Of course there are. And the easiest ways of introducing anything new in our process is to find out where it overlaps with what we already do, how to extend what we do naturally to cover those overlaps, and how to augment and add new tools in that can help us with our current approach, but can extend across into this other way of doing things.

> You can practise on vulnerable applications. The benefit is if you decide to learn more about security testing and practise it, none of that time will be wasted because it's the same techniques that you will apply when you go back into your normal testing. When you are looking at live sites, you are learning about how other sites structure themselves. You are using your tools and techniques on them, so you're gaining more experience, exposure, more practise. None of this is wasted.

> It just takes time and it can take a lot of time and we don't know what we're going to get out of it because we're exploring, we're learning, we're experimenting. But when we are working on systems and our jobs, we need to figure out how to add more of this into our existing approach, faster.

> The easiest way to add more security in is to add additional tooling that augments our existing testing and automating so we can add passive security testing into our process by running all the automated API GUI execution through a security proxy an HTTP proxy designed to help people do security testing. We could do all our exploratory testing through that. We are doing web exploratory testing. We can configure the browser to use a proxy.  If we're doing mobile testing, we can configure the app to point through a proxy that will capture all the HTTP traffic that's being used.

> One of the benefits for this is that there's Zed Attack Proxy HTTP proxy or Burp Suite, if we're using the paid version, can passively scan the traffic as we proxy through it. But we can also add additional scanning afterwards, an active scan that can even use Web Driver. So it can use the HTTP request, but it can also go through Web Driver, which can give us additional functional coverage if we are starting off in our automated execution journey and if we haven't written a lot of tests yet. If we do exploratory testing through there, we can have Burp Suite actively scan through Web Driver the request that we made.

> Building security in is the easiest way to cover security. In the same way that if you want to build a quality system, you build it in right at the coding process, the same is with security. It's very hard to say, are there any issues with SQL injection? But if we can say we have added coverage of SQL injection at the point where SQL injection can occur. If our coverage has been reviewed by Appsec by the team that looks at the application security in our environments. If we have data generation in our tests have we fuzzed it with common SQL injection payload? These are very specific questions that we can answer.

>  Not just learning how to code to automate, but learn the basics of secure coding with the languages and libraries that you're using, right? Every language has specific gotchas related to different security vulnerabilities.

>  What we'll see is that one vulnerability in your code can be taken advantage of in a hundred different ways by hackers. But fixing it takes one change, in possibly one part in your code. And if it isn't just one change in one part your code, then it may suggest that you need to re architect the application. Now, we don't have to learn a lot from a testing perspective to make a difference in secure coding.

Saucelabs revealed, during the conference that they are introducing new functionality to support running Saucelabs execution through a ZAP proxy and gaining access to Passive scan results and the session to allow for later Active scanning and investigation.

In the talk I also covered:

- a bunch of tools that can be used
- Security vulnerability concepts that we already use in our testing
- how to extend our existing automated execution to cover more security payloads
- how to use our automated execution approach and coverage to review security risks