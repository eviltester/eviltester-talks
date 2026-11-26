# View Page Source — Findings and Summary Notes

[Original PDF](exports/summary-notes-txt.pdf)

## Compare Functionality to find Differences Between Browsers:

### All browsers:

- colour coding for the syntax, I found the IE colour scheme made it easier for me to identify ‘copy’ among ‘code’

### IE:

- is pretty basic view source, looks like an rtf notepad view.
- IE does not have clickable links - have to copy paste into browser
- colour coding for the syntax, I found the IE colour scheme made it easier for me to identify ‘copy’ among ‘code’
- in IE find is a dialog, makes it a little harder

### Chrome

- Find in Chrome shows all matches in the scroll bar - making it easy to identify matches
- inspect in Chrome source shows the dom view, to help spot difference
- Chrome does not open this links in view-source, it opens them as a rendered view

### Edge

- Find in Edge, (like Chrome) shows all matches in the scroll bar - making it easy to identify matches
- Edge does not have clickable links but can ctrl+click to open a link as source in the in the debugger (doesn’t open images)

### Firefox:

- the only browser to show syntax errors in the html
- Firefox click on links to open those files as ‘source’ (ctrl opens in a new window)
- Find - Firefox shows the matching tag and use keys to navigate through
- inspect in Firefox on source shows the rendered source view, not the DOM view (so is really irrelevant)

### Safari

- Find (like Firefox) , Safari shows the matching tag and use keys to navigate through
- Safari has clickable links and views css as source (shows images as images, html links open in a new tab)

## Conclusions:

### Firefox:

- best for identifying syntax errors
- best for navigating source on clicks
- Chrome and Edge best for finding ‘stuff’

### IE

- best for reading between copy and code (for me)

## Reference Sites:

- https://developer.mozilla.org/en-US/docs/Web
    - The mozilla developers network goes in to a lot of detail for HTML and related technologies. A very authoritive site, but it can be a tad intimidating to us beginners.
- http://www.w3schools.com/
    - This site generally gets some flack from professional web developers, but I think it provides a pretty easy route in to understanding the HTML technology and is usually the first site you will find when you Google for HTML answers.
- https://developers.whatwg.org/
    - Again, can be a bit terse, and intimidating for beginners, but is built by professional developers and is often very detailed.
- http://www.webplatform.org/
    - Web Platform might become a great site, but since it is community driven, it is great where it has content, but some areas are not covered with documentation.

## Visit some sites

view-source:http://compendiumdev.teachable.com/courses

I was looking at the source for one of the online training platforms that I use and Firefox highlighted a syntax error. It doesn’t look like the `</head>` is a stray tag, but if I look a little higher, I can see that the meta tag isn’t closed. Perhaps that’s the problem. But it might mean that on some browsers the page doesn’t render effectively or the javascript after the meta tag might have been counted as being part of the meta tag and might not be brought in as javascript. I could test for this risk, or we could just fix the rouse so it is correct and mitigate the possibility of any risk.

In edge, I can see there must be some browser detection on the server because edge has different code.

Edge has meta data in the body! Which I thought was illegal.

quick web search shows me that it is illegal in HTML4, but allowed in HTML5.

http://stackoverflow.com/questions/1447842/what-happens-if-the-meta-tags-are-present-in-the-document-body

I check the doctype at the top and can see that this page is declared as HTML5 so ‘in theory’ this is legal.

Make me a little nervous, but hopefully the serve detects the browsers properly and this doesn’t cause any issues on older browsers.
