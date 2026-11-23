<!-- footer: @eviltester -->

<!-- Slide 1 -->

# Unused Slides – Test Automation Day 2015

---

<!-- Slide 2 -->

# People have been arguing about “automation” since before the word existed.

---

<!-- Slide 3 -->

# "There exists a widespread belief that ‘if it's automatic, it must be good’. but our experience shows that this is not always the case."

Alfred P. Sloan, “My Years With General Motors”, page 303, 1964

---

<!-- Slide 4 -->

# Early Automation

- The commercial tool demo
    - Lessons: Time based synchronisation bad, slow when learning, automate to add value
- The Keyword Driven Terminal Emulation Automator
    - Lessons: Automate instead of writing tools, experiments aren’t always scalable

---

<!-- Slide 5 -->

# How do you know what to automate?

---

<!-- Slide 6 -->

# How do I automate when I test?

- I look at what I do.
- I try to improve.

---

<!-- Slide 7 -->

# How do I automate when I test?

I look at what I do. I try to improve.

- Stop doing it
- Automate part of it
- Automate the execution of the process
- Automate the instantiation, execution, and reporting of the process

---

<!-- Slide 8 -->

# Improve what?

- A boring activity
- A slow activity
- An error prone activity
- An activity that takes a long time
- An activity I do frequently
...is a candidate activity to automate

---

<!-- Slide 9 -->

# My first ‘proper’ automation

Automate the generation of ‘Scripts’ from ‘Paths’ to support interactive testing

Lessons Learned:

- ‘Paths’ underpin ‘scripts’ not ‘cases’
- Data invariants are structural
- Structure vs Function vs Logical Abstractions

---

<!-- Slide 10 -->

# Case Studies - As a:

- Tester:
    - Automate ‘process’ mandates
        - construction of manual scripts
        - cross-references to requirements
- Manager
    - Automated parsing of Exploratory Testing Reports
    - Automated weekly reports & metrics

---

<!-- Slide 11 -->

# If you don’t know...

- Are we using the right tools?
- Do the staff have the right skills?
- Are we doing this the right way?
- Is it supposed to take this long?
- Is that really hard to do?
- Is that really not possible?

---

<!-- Slide 12 -->

# I don’t recommend

- psychology/personality tests,
- coding tests
If the candidate ‘failed’ these would you reject the candidate?

If the candidate ‘passed’ these, would you hire the candidate?

---

<!-- Slide 13 -->

# “The definition of insanity is doing the same thing again and again and expecting a different result”

accredited to Einstein

---

<!-- Slide 14 -->

# Use Randomisation

- Some data controls paths
- Some data dictated by test conditions
- Randomise data across equivalence classes
    - Log the data used to aid investigation
    - Seed the data generation to aid replay

---

<!-- Slide 15 -->

# Do build Abstraction Layers. Don’t build tools and frameworks.

- Libraries for re-use
- Model Domains
- Use normal ‘good’ coding practises

---

<!-- Slide 16 -->

# Can your automation abstractions support testing in multiple ways?

- Are you tied in to Cucumber or FitNesse?
- Can you reuse your automation for ad-hoc testing?
- Can your automation libraries support exploration? Or performance Testing?
