---
marp: true
theme: default
paginate: true
backgroundColor: '#000000'
color: '#ffdf00'
footer: 'Technical Web Testing 101 · AI-generated summary'
style: |
  section { font-family: Arial, Helvetica, sans-serif; font-size: 27px; line-height: 1.3; padding: 55px 60px 65px; }
  section h1 { color: #ff4b4b !important; font-size: 46px; line-height: 1.15; }
  section h2 { color: #ff4b4b !important; font-size: 36px; line-height: 1.2; }
  a { color: #ffdf00; }
  strong { color: #ffffff; }
  footer, section::after { color: #ffffff; font-size: 15px; }
  pre, code, pre code { background: #171717; color: #ffdf00; }
  pre { font-size: 20px; }
  pre code * { color: #ffdf00 !important; }
  img { max-width: 100%; max-height: 300px; object-fit: contain; }
  table { font-size: 24px; }
  th, td, tr { background: #000000 !important; color: #ffdf00; border-color: #ff4b4b !important; }
---

# Absolute Basics

Technical Web Testing 101 · Section 02

**AI-generated summary of Alan Richardson's recording.**

Key points and redrawn diagrams; these slides do not reproduce the complete original deck.

[Watch from 00:03:15](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=195s) · [Transcript](transcript.md)

---

## Let questions drive the investigation

- Learn the technology to understand what might fail.
- A tool can reveal a new question; a question can suggest a tool.
- Programming and automation extend the investigation.
- Judge a technique by the information it helps us obtain.

[Watch: 00:03:15](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=195s)

---

## Give a tool list a purpose

- Record tools the team actually uses and supports.
- Keep setup notes that help a new team member get started.
- Track tools worth investigating when a need arises.
- A long list of unfamiliar names adds little practical capability.

[Watch: 00:06:25](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=385s)

---

## MORIM: choose the next useful action

![MORIM actions surrounding a testing question, with no fixed sequence](../../images/morim.svg)

Model · Observe · Reflect · Interrogate · Manipulate. Repeat in any useful order.

[Watch: 00:09:20](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=560s)

---

## Model and observe

- Sketch the application, its layers and the messages between them.
- Include uncertainty: what do we assume rather than know?
- Observe traffic, logs, database state and visible behaviour.
- Compare the evidence with the model and revise it.

[Watch: 00:09:20](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=560s)

---

## Interrogate and manipulate

- Interrogate a particular message, value or event in detail.
- Keep a history so focused inspection does not lose the wider context.
- Manipulate data, requests, responses or the environment.
- Use the resulting behaviour to test an explanation.

[Watch: 00:09:20](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=560s)

---

## Reflect before choosing the next experiment

- What did the last action reveal?
- Which explanation fits the evidence? What remains uncertain?
- Which action would help answer the next question?
- Switch between MORIM activities rather than follow a fixed checklist.

[Watch: 00:09:20](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=560s)
