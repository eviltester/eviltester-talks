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

# Modern Browsers

Technical Web Testing 101 · Section 04

**AI-generated summary of Alan Richardson's recording.**

Key points and redrawn diagrams; these slides do not reproduce the complete original deck.

[Watch from 00:18:58](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=1138s) · [Transcript](transcript.md)

---

## Start with the browser developer tools

- Observe HTTP requests, responses and loading activity.
- Inspect elements and change the live DOM.
- Read console output and investigate JavaScript errors.
- Explore the capabilities of the browser already in use.

Firebug in the recording illustrates an earlier generation of these tools.

[Watch: 00:18:58](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=1138s)

---

## Read the messages behind a page

- Keep the network history while navigating through the application.
- Inspect methods, URLs, parameters, headers and response bodies.
- Compare submitted data with the values visible in the form.
- Follow a surprising request rather than guess from the screen alone.

[Watch: 00:19:51](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=1191s)

---

## Compare the source, DOM and console

- Inspect the element responsible for a visible control.
- Watch the DOM change after JavaScript or an Ajax response.
- Use the console to see errors and explore application behaviour.
- Preserve logs when navigation would otherwise clear useful evidence.

[Watch: 00:22:07](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=1327s)

---

## Investigate cookies and session state

- Inspect names, values, paths, domains and expiry information.
- Change or remove a cookie and observe the application response.
- Check which editing operations the chosen tool actually supports.
- Measure session sharing instead of assuming each window has its own jar.

Section 6 revisits and corrects the early incognito assumption in this demo.

[Watch: 00:28:20](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=1700s)

---

## Build hypotheses during an exploratory session

- The Gruyere demo starts with normal use and captured requests.
- Inspect hidden fields, URL parameters and cookie values.
- Form a hypothesis about the server-side model, then vary an input.
- Log out and back in when testing how changed state takes effect.

The example uses an application deliberately provided for testing.

[Watch: 00:35:06](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=2106s)

---

## Keep evidence and a developing model

- Record actions, observations and the reasoning behind changes.
- Save useful traffic, including a HAR export where available.
- Distinguish an observed effect from an explanation of its cause.
- Let the next question determine which tool or layer to investigate.

[Watch: 00:35:06](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=2106s)
