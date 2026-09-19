
<!-- footer: @EvilTester -->
<!-- page_number: true -->

# Automating Pragmatically

Testival Meetup 20190604

## Alan Richardson

- EvilTester.com
- @EvilTester
- compendiumdev.co.uk
- digitalonlinetactics.com

---

~~~~~~~~
Title: Automating Pragmatically

The online discussions of automating can leave me confused.

- Should you automate through the GUI?
- Should GUI automating be banned?
- Do all testers need to code? Is automating part of testing
  or not?
- Do we need to automate to get a job?

In this short session Alan will discuss automating
from a pragmatic and contextual position and
share how he thinks about automating.

We will leave time for questions, and Alan is happy to answer
questions on any testing or development related topic.
~~~~~~~~

---

# Naming - Test Automation

- we don't automate testing
- Automation in Testing
- Tools Support
- Testing vs Checking

_Use your own words._

---

# Automation

- verb?
- noun?

- Automate, Automated, Automating
- Automatization
- Automator: Programmer, User of Tool
- Automaton: Script, Configured Tool

---

# Why include "Test?"

- Test Strategy we identify aims
- Test Approach we identify things we can automate to support our aims

_Automating is a concept independent of testing. We Automate Stuff To Help Us Test._

---

# Software Development Automation

- CI, CD, make, automated build
- dependency management
- code completion
- IDE, Static Analysis
- Compilers, Assemblers, Interpreters

We automate throughout the Software Development process.

---

# Use your own words

I avoid saying "Test Automation"

- Automated Execution of Path X
- Assertions to cover acceptance criteria

Choose specific phrases for the concept or point.

---

# Who do you believe?

- Should you automate through the GUI?
- Should GUI automating be banned?
- BDD is not Testing

---

# Believe no-one

- look for absolutes
- identify "but..."
- evaluate approaches

Build your own models. Believe your own experiences.

---

# Future Skills

- Do all testers need to code?
- Is automating part of testing or not?
- Do we need to automate to get a job?

---

# Does it matter?

- we work in teams
- what does your current environment need?
- what are you interested in?
- what are your constraints? time, money, skills, opportunities
- any related weak signals? AI, Security, Ops, Performance

---

# Keep Learning

- Build the path that is appropriate for you
- Build on your strengths
- Don't ignore your weaknesses

_Be interested in Software Development as a whole._

---

# A Model of Testing

Comparing a thing to a model of a thing.

- Modelling
- Observation
- Reflection
- Interrogation
- Manipulation

---

# Models of Automated Execution

- System as a Graph
- Paths through a System
- Data flows through paths
- Invariant Data Controls Paths
- Variant Data
    - Partitions
    - Abstracted

---

# System as a Graph

- there are many executable models
    - events, state, flow
- model based testing
    - all testing is model based
    - execution can be model driven

---

# Paths through a System

- execution follows a path
- manually
    - via test script
    - exploratory objective
- automated
    - code
    - model traversal
    - keywords
    - declarative implementation (BDD)

Flow abstraction.

---

# Data Flows Through Paths

- Login (username, password),
- Create New User (username, email, role)

Gives us:

- Data Driven Testing
- BDD example tables
- Certain paths require Invariant data (admin role)
- Equivalence Partitions (valid email, invalid email)

---

# From Modelling, comes Coverage

---

# Automate Tactically or Strategically

- Strategically
    - long term,
    - team agreed,
    - maintained,
    - specific tools
- Tactically
    - short term,
    - specific objective,
    - single use/person,
    - adhoc scripts

---

# What will work for you?

- know your outcomes
- you can only automate what you know to be possible
- experiment tactically
- experience refactors to strategic implementation
- responsibility and ownership

---

# About Alan Richardson

- EvilTester.com
- CompendiumDev.co.uk
- Talotics.com
- @EvilTester

_see above for books, youtube, online training, patreon, blog, etc._
