##  BrowserStack - Breakpoint 2020 - Automating to Augment Testing

Much of the automating we do to support testing involves detecting change. Once our tests pass, they fail when the system changes and the automated execution alerts us to the change. There are other ways that automating can help us.

https://www.eviltester.com/conference/browserstack_breakpoint2020_conference/

## Youtube Video

[![Automating To Augment Testing](https://img.youtube.com/vi/-UQoVjDWTMY/0.jpg)](https://www.youtube.com/watch?v=-UQoVjDWTMY)

[Watch The Full Talk on YouTube](https://www.youtube.com/watch?v=-UQoVjDWTMY)

## Content

- [slides as markdown](slides.md)
- [slides as pdf](export/AutomatingToAugmentTesting.pdf)

## Overview - Automating to Augment Testing

Published blurb:

_Automation isn’t just to enable testing—it can also be wielded to support testing. Much of this involves detecting change. Once tests pass, they fail when the system changes, but we can automate the change detection work. We can also automate tactically to achieve quicker results. And if we write abstraction layers well, we can reuse them to create ad-hoc tools or ad-hoc scenario execution. Alan Richardson will talk about the other ways in which automation can help us, using case studies and his own experience._

## Blurb

Much of the automating we do to support testing involves detecting change. Once our tests pass, they fail when the system changes and the automated execution alerts us to the change. There are other ways that automating can help us. We can automate to augment and support our testing, as well as automating away some of the regular change detection work. We can automate such that tools observe the system or traffic as we test, and alert us to conditions we might need to be aware of. We can automate the system when it is unstable to alert us to the fact that it might now be stable enough to spend time testing. We can automate tactically to quickly achieve results. And if we write abstraction layers well, we can reuse them to support us creating ad-hoc tools or ad-hoc scenario execution. This talk is going to focus on some of 'the other ways' automating can help us, and using some case studies, the topics and skills I had to learn to use them.

There are four main case studies I will explore in more detail in the talk.

- Automating a registration form, which was unstable and had a lot of errors. We automated it to detect obvious bugs, prior to spending time testing it.
- Ad-hoc tooling experiments to support testing - I'll show an example tool using Chrome Debug Protocol to scan http traffic for preconfigured words that I used to test for email leakage in messages, and how to use Proxy tools for similar functionality.
- Micro Bots to support testing - JavaScript bots that run from the console to create data and control systems to support testing
- Automation Bots - re-using Automation abstraction libraries to create bots in parallel that 'use' the system to support multi-user exploratory testing with a single human testing, and check for memory leakage.

Key Take Away Points:

- Abstractions that we use for automating can be used to support exploratory testing
- Automating can be tactical as well as strategic
- Test Automation is automation in support of testing
