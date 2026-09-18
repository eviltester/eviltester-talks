<!-- footer: @EvilTester -->
<!-- page_number: true -->

# Automating Tactically and Strategically

## Alan Richardson

* [www.eviltester.com](http://www.eviltester.com)
* [www.compendiumdev.co.uk](http://www.compendiumdev.co.uk)
* [@eviltester](https://twitter.com/eviltester)

<!--
## TESTING ASSEMBLY 09/2017, Helsinki
-->



<!--

I'm a test consultant - I test things and I help people test better.

Particularly with Automating stuff, testing within their current system of development.

Because in actual fact I'm a 'software development consultant' but I'm branded as a test consultant.

-->

---

# Do you automate tactically or _strategically_?


<!-- 
Both approaches are useful and can help our test projects in different ways.
-->

---

# _Automating Tactically_ allows us to move fast, and target immediate needs

<!--
, support testing and gain benefits very quickly - often with minimal cost and justification.
-->

---

# _Automating Strategically_ allows us to gain budget and support for longer periods of work

<!--
 and justify the cost and ongoing maintenance.
-->

---

# We may _believe_ we are automating strategically but are _actually_ automating tactically

<!--:  then we may create problems for ourselves we may not have the time for maintenance and refactoring, we may not use our 'automation' to support our 'manual testing'.-->


---

# _Combine_ tactical and strategic approaches to better our testing efforts.

<!--
Other dangers and problems exist, which we will learn about in this keynote when we will compare the two approaches, learn the dangers and the benefits, and learn how to combine tactical and strategic approaches to better our testing efforts.
-->

---

# Secrets of _Successful_ Practical Automating

- Get work done
- Automate Flows
- Multiple Abstractions
- Abstract to libraries, not frameworks

---

# Testing field argues about

- Testing vs Checking
- You can't automate testing
 
## "Test Automation" is contentious

<!--

Test automation is contentious with testers.

And we know it is contentions with 'programmers' because some programmers don't want to test their stuff, that is what the tester is for, why else would they be called testers. And why is it called 'test automation' if the testers don't automate the tests.

This is a 'testing' thing, not a programmer thing.

And that is why I make it a 'development' thing. Not a 'testing thing' or a 'programmer thing'.
-->

---

# An Example

# _"Is what follows a Test?" ..._

<!-- Prepare yourself for code -->

---

~~~~~~~~
@Test
public void createPreviewMVP() throws IOException {

  String args[] = { 
     new File(System.getProperty("user.dir"),
        "pandocifier.properties").getAbsolutePath()};
        
  new PandocifierCLI().main(args);

  String propertyFileName = args[0];
  File propertyFile = new File(propertyFileName);
  PandocifierConfig config;
  config = new PandocifierConfigFileReader().
               fromPropertyFile(propertyFile);
        
  Assert.assertTrue(new File(
                      config.getPreviewFileName()).exists());
}
~~~~~~~~

---

# An Example "Ce n'est pas un test", ...

- a Test, it says it is a `@Test`
- an Automated Test, it **checks** something (file exists)
- an Automated Test, it **Asserts** on the check
- a Tool - I use it to automatically build one of my books
- not an Application - it doesn't have a GUI or a standalone execution build

---

# This is `automated execution of a process`

---

# We _Automate_ Parts of our Development Process: _Coding, Checking, Asserting,_ ...

---

![150%](images/DevelopingAutomatedLevels_631x391.png)

---

# _Tactical Reality_ - I don't really care, I just want to get work done

## Suggests we also have 'strategic reality'

---

# Tools vs Abstractions

- Gherkin
- Specflow, Cucumber

`- - - - - - - - - - - - - -`

- Gherkin is a DSL templating language
- Specflow, Cucumber are template parsers
- We have to create abstractions to fill in the gap


---

# _E. W. Djkstra_ on Abstraction

## "The purpose of abstraction is not to be vague, but to create a new semantic level in which one can be absolutely precise."

- 1972 ACM Turing Lecture: '[The Humble Programmer](http://www.cs.utexas.edu/~EWD/transcriptions/EWD03xx/EWD340.html/)'

<!--

http://www.cs.utexas.edu/~EWD/transcriptions/EWD03xx/EWD340.html/

-->
 
---

# _Regression_ Testing

## The system rarely actually suffers "Regression"

---

# Continuous Condition Assertion

- TDD, ATDD, Automated execution
- All of these provide an ongoing safety net which might mean we don't need to revisit areas in the future (if we also tested them)
- They don't mean that we have 'tested' them now

---

# Coverage - All coverage is Model Based
- Code coverage based on source code model
- What about requirements, system interfaces, states, flows?
- Code coverage is a useful metric for TDD coverage
  - coverage models based on risk

---


# Tactical vs Strategic _Automating_

## Strategic does not mean 'strategy document'

---

# Automating as part of a Testing _Strategy_

---

# Automating Tactically vs Strategically

| **What is Tactical?**      | **What is Strategic?**             |
|----------------------------|-----------------------------|
| Solve a problem   | Agreed & Understood Goals |
| Short Term |    Long Term    |
| Change as necessary | Slower to Change |
| Your Time | 'project' time |


---

# Warning - sometimes tactics look like strategy

- Use of Jenkins is not Continuous Integration
- Cucumber/Specflow (Gherkin) != ATDD or BDD
- Automated Deployments != Continuous Delivery
- Containers != always good environment provision
- Page Objects != always good system abstractions

---

# You know you are Automating strategically when...

- Reduced Maintenance & Change
- Everyone agrees why
- No fighting for 'time'
- It's not about roles
- It gets done

---

# How do we automate?

- not about "test automation"
- it is about automating tasks
- automate the assertions used to check that the stories are still 'done'

---

# Automate _flows_ through the system

## - vary data
## - abstract the execution

---

# Automating Strategically with Abstractions

see also "Domain Driven Design"

## "modeling the system in code"

- abstractions are about modelling - people seem to be scared of having too many models



---

# No Abstractions - _Web Testing Example_

---

~~~~~~~~
@Test
public void canCreateAToDoWithNoAbstraction(){
 WebDriver driver = new FirefoxDriver();
 driver.get("http://todomvc.com/architecture-examples/backbone/");

 int originalNumberOfTodos = driver.findElements(
             By.cssSelector("ul#todo-list li")).size();
 WebElement createTodo = driver.findElement(By.id("new-todo"));
 createTodo.click();
 createTodo.sendKeys("new task");
 createTodo.sendKeys(Keys.ENTER);
 assertThat(driver.findElement(By.id("filters")).isDisplayed(), is(true));

 int newToDos = driver.findElements(
                          By.cssSelector("ul#todo-list li")).size();
  assertThat(newToDos, greaterThan(originalNumberOfTodos));
}
~~~~~~~~

---

## But there were Abstractions (**Lots of them**)

* WebDriver - abstration of browser
* FirefoxDriver - abstraction Firefox (e.g. no version)
* WebElement - abstraction of a dom element
* createToDo - variable - named for clarity
* Locator Abstractions via methods e.g. `findElement`
* Manipulation Abstractions `.sendKeys`
* Locator Strategies `By.id`
* ...

---

# _Using Abstractions_ - Same flow

---

~~~~~~~~
@Test
public void canCreateAToDoWithAbstraction(){
  TodoMVCUser user = 
        new TodoMVCUser(driver, new TodoMVCSite());

  user.opensApplication().and().createNewToDo("new task");

  ApplicationPageFunctional page = 
          new ApplicationPageFunctional(driver, 
                                   new TodoMVCSite());
  assertThat(page.getCountOfTodoDoItems(), is(1));
  assertThat(page.isFooterVisible(), is(true));
}
~~~~~~~~

---

# What Abstractions were there?

* `TodoMVCUser`
   * User
   * Intent/Action Based
   * High Level   
* `ApplicationPageFunctional`
   * Structural
   * Models the rendering of the application page  

---

# REST Test - _No Abstractions_

---

~~~~~~~~
@Test
public void aUserCanAccessWithBasicAuthHeader(){

  given().
    contentType("text/xml").
    auth().preemptive().basic(
      TestEnvDefaults.getAdminUserName(),
      TestEnvDefaults.getAdminUserPassword()).
  expect().
     statusCode(200).
  when().
     get(TestEnvDefaults.getURL().toExternalForm() +
         TracksApiEndPoints.todos);
}
~~~~~~~~

---

# But there were Abstractions

- RESTAssured - `given`, `when`, `then`, `expect`, `auth`, etc.
- RESTAssured is an abstraction layer
- Environment abstractions i.e. `TestEnvDefaults`  

**Lots of Abstractions**

**But a lack of flexibility**

---

# Different abstractions to _support flexibility_

---

~~~~~~~~
@Test
public void aUserCanAuthenticateAndUseAPI(){

  HttpMessageSender http = new HttpMessageSender(
                                   TestEnvDefaults.getURL());

  http.basicAuth( TestEnvDefaults.getAdminUserName(),
                  TestEnvDefaults.getAdminUserPassword());

  Response response = http.getResponseFrom(
                                  TracksApiEndPoints.todos);

  Assert.assertEquals(200, response.getStatusCode());
}
~~~~~~~~

---

# An _API Abstraction_

--- 

~~~~~~~~
@Test
public void aUserCanAuthenticateAndUseAPI(){

  TodosApi api = new TodosApi(
                         TestTestEnvDefaults.getURL(),
                         TestEnvDefaults.getUser());
                              
  Response response = api.getTodos();
  
  Assert.assertEquals(200, response.getStatusCode());
}
~~~~~~~~

---

# Automating API _vs_ GUI 

---

# _Automate_ at the interfaces where you can _interact_ with the system.

---

# Architecting to Support...

|     |     |
|------|-----|
| - Testing | - Support |
| - Deployment | - Automating |
| - Monitoring  | - Devops |
| - Releasing  |   - etc. |




----

# Abstractions support different types of testing

- regular automated execution with assertions
- creation and maintenance by many roles
- exploratory testing
- stress/performance testing (bot example) requires thread safe abstractions

---

# Good abstractions _encourage creativity_, they do not force compliance and restrict flexibility.

---

# Supports Law of _Requisite Variety_

## "only variety can destroy variety" - W. Ross Ashby

## "only variety can absorb variety" - Stafford Beer


---

# Frameworks can 'Destroy' variety

- Frameworks force us to comply with their structure
   - or things get 'hard'
   - or we don't reap the benefits from the Framework
- Some things are not possible
- Some things never occur to you to do 

<!--

Same with our Architecture for Automating. We can build it so that some things are not possible and because we are thinking around a framework it may never occur to us to do certain things.

-->

----

# We have a lot of models

   - user intent model - what I want to achieve
   - user action model - how I do that
   - interface messaging model - how the system implements that
   - admin models, support models, GUI models

---

# And models _overlap_

## e.g. user can use the API or the GUI to do the same things


---

# When we don't do this

- test code takes a long time to maintain
- test code takes too long to write
- test code is hard to understand
- test code is brittle - "every time we change the app the tests break/ we have to change test code" 
- execution is flaky - intermittent test runs - "try running the tests again"


--- 

# Example: Tactical Approach on Agile projects

- exploratory testing to get the story to done
- create a tech debt backlog for 'missing' automated tests
- `@Test` code is tactical and we can knock it up (not as good as production)

---

# Example: Strategic Approach on Agile Projects

- automate assertion checking of acceptance criteria for "done"
- ongoing execution of the assertions for the life of the story

---

# Example: Strategic Approach on Agile Projects implies...

- maintained for the life of the story in the application
- deleting the @Test code when no longer relevant
- amending code structure to make relevant as stories change and evolve
- `@Test` code is strategic asset (just like production code)


---

# Why labour the point?

- "test automation" often means "testers do the automating"
- testers may not program as well as programmers
- testers may not know various programming patterns
- when programmers see `@Test` code written by testers they often don't want to touch it or maintain it


---

# Move from Abstractions such as 'Programming' and 'Testing' to _'Developing'_

---

# I say I'm a "Test Consultant" 

## I'm really a "Software Development Consultant"

## Testing is Part of the Development process


---

# Summary

- Automate Strategically
- ongoing assertion checking automated in @Test code
- Abstractions model the system in code
- Write abstractions at multiple levels
- Good abstractions can support exploratory testing
- Write good code all the time

---

# Learn to "Be Evil"

* [www.eviltester.com](http://www.eviltester.com)
* [@eviltester](https://twitter.com/eviltester)
* [www.youtube.com/user/EviltesterVideos](https://www.youtube.com/user/EviltesterVideos)

---

# Learn About Alan Richardson

* [www.compendiumdev.co.uk](http://www.compendiumdev.co.uk)
* [uk.linkedin.com/in/eviltester](http://uk.linkedin.com/in/eviltester)


---

# Follow

- Linkedin - [@eviltester](https://uk.linkedin.com/in/eviltester)
- Twitter - [@eviltester](https://twitter.com/eviltester)
- Instagram - [@eviltester](https://www.instagram.com/eviltester)
- Facebook - [@eviltester](https://facebook.com/eviltester/)
- Youtube - [EvilTesterVideos](https://www.youtube.com/user/EviltesterVideos)
- Pinterest - [@eviltester](https://uk.pinterest.com/eviltester/)
- Github - [@eviltester](https://github.com/eviltester/)
- Slideshare - [@eviltester](www.slideshare.net/eviltester)

---

# BIO
 
Alan is a test consultant who enjoys testing at a technical level using techniques from psychotherapy and computer science. Alan is the author of the books "[Dear Evil Tester](http://www.eviltester.com/page/dearEvilTester/)", "[Java For Testers](http://javafortesters.com/page/about/)" and "[Automating and Testing a REST API](http://compendiumdev.co.uk/page/tracksrestapibook)". Alan's main website is [compendiumdev.co.uk](http://compendiumdev.co.uk) and he blogs at [blog.eviltester.com](http://blog.eviltester.com) (see also [TesterHQ.com](http://testerhq.com))
