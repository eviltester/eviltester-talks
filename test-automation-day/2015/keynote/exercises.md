# Exercises for Practical Test Automation Lessons Learned — Test Automation Day 2015

[Original PDF](export/exercises.pdf)

## Watch you language

Write down sentences that describe your testing approach.

e.g. We performance test the site prior to live. We do exploratory testing of each story in a sprint.

Now rewrite the sentences to be more specific, and avoid using testing ‘buzz’ words in the text.

e.g. instead of “We do exploratory testing of each story in a sprint.” you might write:

For each story in the sprint, we write a list of high level sentences that describe acceptance criteria conditions we want to check have been met, we also write ideas of other things that might go wrong around that high level criteria. We spend time during the sprint writing code to automate the acceptance criteria, and we spend time using the application to investigate the criteria in different ways e.g. to check validation. We try different combinations of data to go beyond what the requirements say. When we do this investigation work, we write down the data and paths we explored to communicate to others what we did to ‘test’ the story.

## Beliefs

What beliefs do you have about the process of automating the application execution and assertion process? e.g. All testers should code etc.

Rewrite your belief to be a statement that is as hard to argue with as possible.

## Objectives

Write down the objectives for, and the reasons why, you and your team write code to automate the application. (If you don’t automate yet, then write down the reasons why you are thinking of doing so)

Do they cover the aims and objectives of the people involved?

Are they really what you want, or are they management speak?

Are you solving problems?

## Refactoring

Do you know what refactoring is? If not, do some research to find out.

Do you know what abstraction layers you are using?

Try and analyse them in terms of DRY (Don’t repeat yourself) and Single Responsibility.

Identify and write down areas to improve in your code that automates the application. Make the improvements that you identify, short and actionable.
