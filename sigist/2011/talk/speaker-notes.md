# Notes from the Presentation Source

Prepared notes from the original slides, with source slide numbers. These are preparation materials, not a transcript.

## Slide 3 - Testing Used to be Easy...

Y2K

1+ Year Projects

Sometimes Nothing got delivered... ever (Except Test Scripts; lots of test scripts)

## Slide 7 - How will getting technical help ME?

Add Value

Model to Identify Risk - technical risk, architecture risk, not just business/project risk

Manifest Risk

Ask Pertinent Questions

Coverage of more than requirements

Work faster - automated and augment

Work closely with developers and share skills

## Slide 8 - Traditional Testing Concepts that Stop YOU Testing Technically

Black Box/White Box

Functional/Non-functional

+ve, -ve

Equivalence Partitioning

Boundary Value Analysis

## Slide 9 - How to get more from your testing books than THEY intended to tell you

Assume that all books are out of date

Generalise &amp; Find Patterns

Deconstruct

Identify underlying principles

## Slide 10 - How to Build Test Techniques From First Principles

Jedi Knights have to build their own light saber. Technical Testers have to build their own techniques.

## Slide 11 - The Ying and Yang of Technical Testing

Observe

Manipulate

## Slide 12 - Technical Testing is a LIE

You are being lied to.

Systems Based Testing is the truth.

## Slide 13 - The right way to quickly build a map

Start building now

## Slide 15 - A Worked Example - Web App Terrain

1 - pic of web app, has fields and local interactions

bypass validation, use source for presuppositions

our app has javascript and plugins (flash)

source code model for manipulation (save and restore)

## Slide 16 - A Worked Example - Server Terrain

2 - pic web app existing in browser communicating to Server with a DB

add more terrain to the model (the server)

options:

request observation and manipulation (in) browser

http traffic observation and manipulation (bypassed validation and GUI)

proxy tools

Server logs, server load

DB load, processing, SQL manipulation

## Slide 17 - A Worked Example - Browser Terrain

But there are multiple browsers that our 'web app gui' might be run in. Add the browser terrain

Cross browser issues - css, javascript

What is 'app' and what is 'browser'

different browsers exist on different operating systems

different browsers have different observe and manipulate mechanisms

how to observe javascript and plugin interaction

how to observe javascript actions? debugger, console

plugin debuggers? e.g. flash debuggers? decompilers?

may need VMs to run different browsers

## Slide 18 - A Worked Example - Architecture Terrain

users don't communicate directly with the server, they go through a load balancer

have to consider session interaction, db replication, possibly load testing, observe load balancer 'balancing', are new 'techniques' required?

## Slide 19 - A Worked Example - User Terrain

New Terrain: PC types - memory models, User journeys, plugin versions (flash 6,7), browser versions (IE 7, 8, 9)

User Data combinations

Test Data Generators

Automated GUI Testing

Sessions

Security

etc.
