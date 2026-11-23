# Notes from the Presentation Source

## Slide 29

Single page app with 3 'pages' (routing)

We could use page objects on this, with navigation

Navigate direct via page, via navigation object

Navigate by clicking to – sync via page (slowloadable requires work) create a waitForPage object extends SlowLoadableComponent

Should a page know how to navigate to itself? Get()

We should consider all options for an abstraction layer:

handle navigation in the page

page .get

Handle navigation separately

jump.to

Navigate.to (has a model of navigation routes)

- support navigate in passing i.e. as a side effect

- consider page navigation as side-effect that returns page object but to me, this is too restrictive as it doesn't allow for error conditions easily but might work at logical levels – if it does work then it allows for a very fluent interface

Could have separate pages that load and wait for particular filter to be selected.

http://todomvc.com/architecture-examples/backbone/#/completed

http://todomvc.com/architecture-examples/backbone/#/active

http://todomvc.com/architecture-examples/backbone/#/

## Slide 30

Unit test domain abstractions

## Slide 31

May have made too close a dependency on page object with the domain object.

Pages Typically deal with text, not domain objects

How would we enter “ “ if domain object enforces domain constraints? e.g. no blank to do text

No Examples of this in the code base – exercise for the reader to try it

## Slide 32

Can tie in well with Gherkin

Given a user creates 10 todo items

When the user deletes 1

Then the GUI shows it as missing
