---
marp: true
theme: eviltester-ama
paginate: true
size: 16:9
title: Test Tribe AMA 2019 — AI-generated Q&A summaries
description: AI-generated question and answer summaries from the recorded AMA with Alan Richardson.
header: AI-generated summary · Test Tribe AMA 2019
---

# Testing and Automation in Testing

## Test Tribe AMA with Alan Richardson

AI-generated summaries of 15 questions and answers.

Created from the YouTube automatic-caption transcript in November 2026. These are newly created summaries, not original presentation slides.

[Watch the recording](https://www.youtube.com/watch?v=I_IK_Q6LwRM) · [Read the caption transcript](https://github.com/eviltester/eviltester-talks/blob/main/test-tribe/2019/transcripts/transcript.md)

---

## Q1. How should a team choose automation tools and abstractions?

- Alan distinguishes libraries that callers control from frameworks that control how code runs.
- Useful abstractions make automated execution readable and maintainable. Data, models and keywords often work together.
- Evaluate technology fit, existing skills, total staffing cost, maintenance risk and the outcome the team needs.
- Small tactical experiments build experience before a long-term commitment. Involve programmers in the decision.

[Watch from 03:46](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=226s) · [Transcript: question 01](https://github.com/eviltester/eviltester-talks/blob/main/test-tribe/2019/transcripts/transcript.md#question-01)

---

## Q2. How can we automate testing for IoT devices and wearables?

- Test as much logic as possible independently of the physical device.
- Identify integration risks across modules, operating systems, device libraries and versions.
- Consider HTTP interfaces or a self-testing application before relying entirely on GUI automation.
- Work with developers on architecture and testability to reduce the device-specific risks left to investigate.

[Watch from 15:10](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=910s) · [Transcript: question 02](https://github.com/eviltester/eviltester-talks/blob/main/test-tribe/2019/transcripts/transcript.md#question-02)

---

## Q3. What can we learn from automation failures?

- Alan mentions books of automation experience, while cautioning that generic lessons need evaluation in context.
- Inexperienced teams can struggle to recognise poor implementation or assess advice about their tools.
- Small tactical experiments expose limitations and build the experience needed to judge whether an approach will scale.

[Watch from 18:25](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=1105s) · [Transcript: question 03](https://github.com/eviltester/eviltester-talks/blob/main/test-tribe/2019/transcripts/transcript.md#question-03)

---

## Q4. Which daily testing activities should we automate?

- Start with small tasks that improve daily work using the skills, tools and time available.
- Alan's examples include generating test scripts and data, submitting defects, setting up environments and parsing logs.
- Help testers build their own capability to automate useful work.
- Look for quick gains and opportunities to apply new learning before expanding into a shared strategic solution.

[Watch from 21:01](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=1261s) · [Transcript: question 04](https://github.com/eviltester/eviltester-talks/blob/main/test-tribe/2019/transcripts/transcript.md#question-04)

---

## Q5. How can we create useful training videos?

- Start creating content with the equipment and budget available. Improve the setup as experience grows.
- Prioritise clear audio. Alan gradually added a microphone, webcam, green screen and lighting.
- In this 2019 session, he describes using OBS for streaming and Camtasia for recording and editing.
- Tool choices reflect the recording period and the amount of video work he expected to do.

[Watch from 25:21](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=1521s) · [Transcript: question 05](https://github.com/eviltester/eviltester-talks/blob/main/test-tribe/2019/transcripts/transcript.md#question-05)

---

## Q6. Which processes should every testing team practise?

- Alan prioritises reviews, retrospectives and debriefs that create useful feedback.
- Ask what the work missed, how to improve it and how to share what people learned.
- Individuals can review their own work. Teams can experiment and remove activities that add little value.
- Use feedback to develop people's strengths while sharing skills across the team.

[Watch from 27:22](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=1642s) · [Transcript: question 06](https://github.com/eviltester/eviltester-talks/blob/main/test-tribe/2019/transcripts/transcript.md#question-06)

---

## Q7. Where did the Evil Tester name come from?

- Alan describes Evil Tester as an attitude that brings alternative views and balance to a project.
- Testers can hold up a mirror to decisions, expose risks and speak about warning signs that others avoid.
- Humour and an understanding of people's interests help difficult messages reach the team.
- The cartoons began as a way to express project frustrations. The name and imagery developed over time.

[Watch from 30:18](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=1818s) · [Transcript: question 07](https://github.com/eviltester/eviltester-talks/blob/main/test-tribe/2019/transcripts/transcript.md#question-07)

---

## Q8. Can scriptless automation help a testing career?

- Scriptless tools can make automated execution accessible to people who prefer less programming.
- Career value comes from transferable skills: modelling, choosing useful coverage and building maintainable abstractions.
- Technical knowledge such as locators, HTTP and headers also transfers between tools.
- Demonstrate what the work achieved and what skills it developed. Tool names alone offer a narrower account.

[Watch from 35:03](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=2103s) · [Transcript: question 08](https://github.com/eviltester/eviltester-talks/blob/main/test-tribe/2019/transcripts/transcript.md#question-08)

---

## Q9. What does Alan think of Katalon Studio?

- Alan explicitly says he has not used Katalon Studio and cannot give a review from experience.
- He describes his limited impression of a product combining tools and abstraction layers.
- Evaluate whether a tool fits the team's needs and offers a learning path people can follow.
- Every tool brings risks and limitations that its users need to understand and handle.

[Watch from 38:44](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=2324s) · [Transcript: question 09](https://github.com/eviltester/eviltester-talks/blob/main/test-tribe/2019/transcripts/transcript.md#question-09)

---

## Q10. How can testers obtain better environment support?

- Describe the specific work that access enables and the consequences when that work cannot happen.
- Explain the effect in terms the audience cares about, such as project delays or time spent helping other teams.
- Develop negotiation and communication skills, and keep pursuing the support the testing needs.
- Make the bottleneck visible. Continual overtime can hide its impact and remove pressure to resolve it.

[Watch from 40:06](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=2406s) · [Transcript: question 10](https://github.com/eviltester/eviltester-talks/blob/main/test-tribe/2019/transcripts/transcript.md#question-10)

---

## Q11. How can testers decide whether to specialise in automation?

- Develop testing skill and use automation to support the test strategy.
- Try programming in daily work, such as data generation or API tasks, and notice whether the learning holds your interest.
- Security, performance, architecture and communication can also strengthen testing.
- Choose a direction that sustains continued learning. Pay and demand can change, so premature specialisation carries risk.

[Watch from 44:14](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=2654s) · [Transcript: question 11](https://github.com/eviltester/eviltester-talks/blob/main/test-tribe/2019/transcripts/transcript.md#question-11)

---

## Q12. How should we assess progress in automation?

- Test counts can obscure what the execution actually covers, especially with different data on equivalent paths.
- Review coverage against a model of relevant paths, conditions, data and requirements.
- Alan describes comparing captured API traffic with a model of endpoints, verbs and parameters to find gaps.
- Use measurements to answer a specific improvement question and reconsider them when that purpose has passed.

[Watch from 50:29](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=3029s) · [Transcript: question 12](https://github.com/eviltester/eviltester-talks/blob/main/test-tribe/2019/transcripts/transcript.md#question-12)

---

## Q13. Does code coverage help with web automation?

- Code coverage identifies code exercised during execution. It gives one view of coverage.
- Alan mainly uses coverage during unit testing and test-driven development.
- Choose tooling that fits the language and build process, with support from the programmers.
- For broader web testing, consider model coverage too. Measuring browser-side code through GUI execution needs extra instrumentation.

[Watch from 54:18](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=3258s) · [Transcript: question 13](https://github.com/eviltester/eviltester-talks/blob/main/test-tribe/2019/transcripts/transcript.md#question-13)

---

## Q14. Should developer and SDET interviews use the same coding tests?

- Alan favours practical auditions that reflect the work and code the candidate would encounter.
- Discuss existing automation, run it and change it together. Explore the candidate's choices and experience.
- Application development and automation can need different abstractions and maintenance approaches.
- The exercise also lets candidates assess the team's work. Algorithm questions need a connection to the actual role.

[Watch from 56:10](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=3370s) · [Transcript: question 14](https://github.com/eviltester/eviltester-talks/blob/main/test-tribe/2019/transcripts/transcript.md#question-14)

---

## Q15. With no automation, which tests should we automate first?

- Alan frames the decision around capabilities, aims and constraints.
- Establish the capability to execute useful paths, including prerequisites such as login or session setup.
- Identify the outcome, deadline, budget and available skills. Separate quick tactical work from longer-term commitments.
- Try the smallest useful experiment and involve developers where their help can remove obstacles.

[Watch from 59:59](https://www.youtube.com/watch?v=I_IK_Q6LwRM&t=3599s) · [Transcript: question 15](https://github.com/eviltester/eviltester-talks/blob/main/test-tribe/2019/transcripts/transcript.md#question-15)
