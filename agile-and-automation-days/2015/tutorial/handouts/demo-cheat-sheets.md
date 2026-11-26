# Demo & Tools Cheat Sheets

[Original PDF](../export/DemoCheatSheets.pdf)

## Browser Based Tools

Chrome Walkthrough of dev tool tabs:

- Elements
- Network
- Sources
- Mobile
- Resources
- Audits

### Chrome Demo with Redmine

- New Project -> submit with missing mandatory fields
- New Project -> Identifier field (size, maxlength)

### Chrome

### How to Access Developer Tools?:

- Right click -> inspect element
- Alt+Cmd+I (Mac)
- Ctrl+Shift+I (Windows)
- [=] menu -> More Tools -> Developer tools

### How to fresh reload the page?:

- cmd+R (mac)
- Ctrl+F5 or Shift+F5 (Windows)

### How to simulate a mobile device?

- In dev tools click the mobile icon in top left

### How to observe and manipulate the DOM?

- Right Click on Dom Element and Inspect Element
- Right Click for context options
- Double click to amend
- Ctrl+f (cmd+f) - find using text, css selector, xpath
- Delete dom elements with delete key
- Add new elements and attributes

## Zap Proxy

### How to find the port that ZAP is listening on:

- Tool\ Options \ Local Proxy

### Easiest way to filter requests is to:

- use the sites and select the site
- add to context
- then use the leftmost history button to only show what is in scope

### How to see the requests?

- use the history tab

### How to fuzz?

- right click on request
- select positions and payload
- start attack - choose strategy

### How do I repeat a Request?

- right click on request
- choose to resend request

### How do I create a breakpoint?

- easiest to use tools \ add a custom http break point…
- you will see the breakpoint in the Breakpoints tab
- use the debug icons when releasing breakpoints

### What else?

- Right click on a selected string and choose “Encode/Decode/Hash”

## BurpSuite

Watch out! BurpSuite Intercept is on by default. Switch it off in Proxy Tab \ Intercept Tab

### How to find the port that ZAP is listening on:

- look in the alerts tab
- also use the Proxy Tab and check the options

### How to see the requests?

- use the Proxy tab \ history tab
- use the Target \ Site Map

### Easiest way to filter requests is to:

- use the target \ site map and select the site
- add to scope
- then in history filter (top of the dialog under tab) Hide out of scope items

### How to fuzz?

- right click on request and send to intruder
- select places to add fuzzed items (positions)
- choose the strategy (battering ram for all at same time)
- then choose the payloads (data you want to fuzz in)

### How do I repeat a request?

- select a sent request
- right click and send to repeater

### How do I create a breakpoint?

- Proxy \ Options \ Intercept Client Request

### What else?

- Use the Decoder to decode/encode strings
- Right click on strings to send to Decoder
- Comparer can compare strings/messages

## Charles

Charles automatically hooks in as proxy so you don’t need to use Foxy Proxy.

Since charles hooks in automatically you probably want to filter in the sequence view - just type the url in as the filter

### How to see the requests?

- shown in the sequence view
- shown in the structure view

### How do I repeat a request?

- select in sequence
- right click and Edit
- use form view for posts

### How do I simulate server errors?

- Use the tools \ map local to create a ‘server error response file’
- Then map this to a request

Fuzzers?

- None

### How do I create a breakpoints?

- right click in sequence and select breakpoints
- use menu Proxy \ Breakpoint Settings to see and amend the breakpoints

### What else?

- Proxy \ Throttle Settings to simulate slow network speeds

### Fiddler

If running in a VM e.g. on Mac:

- tools \ fiddler options
- connections - allow remote computers to connect

### How do I see the requests?

- shown in the sessions list
- click on them and select inspectors tab

### How do I repeat a request?

- drag the request to the Composer tab, edit and execute
- or Right click and use replay

### How do I simulate server errors?

- Use the AutoResponder tab
- Enable rules
- Add rules to respond as you need

Fuzzers?

- None

### How do I create breakpoints?

- Rules \ Automatic Breakpoints - good for simple breakpoints
- or use Rules \ Customize Rules…

### What else?

- Rules \ Performance - to simulate slow network
- View responses in a WebView to make it easier to see
- Use TextWizard to encode/decode strings
