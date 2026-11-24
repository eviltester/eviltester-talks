<!-- footer: © Compendium Developments, 2014, CompendiumDev.co.uk -->

<!-- Slide 1 -->

# Automation Abstractions - Session Overview

Automation Abstractions

Do you suffer from brittle automation? Are your tests slowing down as they age? Do you find your tests hard to read? If so, you, and your team, might be suffering from IAA.

Inadequate Automation Abstraction (IAA) afflicts many teams. An obsession with a single layer of abstraction? Beliefs such as "Everything goes in a feature file", or "Everything is a Page Object". Do you suffer from excessive 'given when and then'?

IAA takes many forms. Together we will explore the common manifestations we've seen. And the steps we took to help teams break their dependence on inadequate abstraction.

Some of you may even be in the grip of IAA now. Don't worry. We can help you too.

We will adopt a spirit of openness and inclusion. We attach no shame to IAA. We will help you work through it. Alternative possibilities are open to you. All of our trained facilitators are ex-IAA sufferers; they understand, and they can help.

---

<!-- Slide 2 -->

# Automation Abstractions: The plan

10:00 – 11:15 (75 mins)

- I have code and slides I can show
- You could sit and listen to me talk for 75 minutes

OR (and this is really what the summit is all about)

- You let me talk for 15 mins to set the scene with a whistle stop tour of automation abstractions
- Then we have a “facilitated discussion” for 60 mins
    - Your: Experiences, Approaches, Lessons Learned, Biases, Opinions

---

<!-- Slide 3 -->

# Automation Abstractions

A Test Management Summit Facilitiated Session

Alan Richardson

@eviltester

alan@compendiumdev.co.uk

www.SeleniumSimplified.com

www.EvilTester.com

www.CompendiumDev.co.uk

www.JavaForTesters.com

[Source link: www.SeleniumSimplified.com](http://www.seleniumsimplified.com/)

[Source link: www.EvilTester.com](http://www.eviltester.com/)

[Source link: www.CompendiumDev.co.uk](http://www.compendiumdev.co.uk/)

[Source link: www.JavaForTesters.com](http://www.JavaForTesters.com/)

---

<!-- Slide 4 -->

# Special Offer &amp; Slides etc.

- Visit
    - Discount code 'tmsummit2014' == $150 for

![discussion 004 special offer slides etc](images/discussion-004-special-offer-slides-etc.jpg)

---

<!-- Slide 5 -->

# Alan Richardson - Blogs, Books, and Courses

Blogs and Websites

- CompendiumDev.co.uk
- SeleniumSimplified.com
- EvilTester.com
- JavaForTesters.com
- Twitter: @eviltester

Online Training Courses

- Technical Web Testing 101
- Intro to Selenium
- Selenium 2 WebDriver API

Videos

youtube.com/user/EviltesterVideos

Books

Selenium Simplified

Java For Testers

leanpub.com/javaForTesters

Alan Richardson

uk.linkedin.com/in/eviltester

Independent Test Consultant &amp; Custom Training

Contact Alan

<http://compendiumdev.co.uk/contact>

![discussion 005 alan richardson blogs books and courses](images/discussion-005-alan-richardson-blogs-books-and-courses.gif)

![discussion 005 alan richardson blogs books and courses 2](images/discussion-005-alan-richardson-blogs-books-and-courses-2.png)

![discussion 004 special offer slides etc](images/discussion-004-special-offer-slides-etc.jpg)

![discussion 005 alan richardson blogs books and courses 3](images/discussion-005-alan-richardson-blogs-books-and-courses-3.jpg)

![discussion 005 alan richardson blogs books and courses 4](images/discussion-005-alan-richardson-blogs-books-and-courses-4.jpg)

![discussion 005 alan richardson blogs books and courses](images/discussion-005-alan-richardson-blogs-books-and-courses.gif)

![discussion 005 alan richardson blogs books and courses 2](images/discussion-005-alan-richardson-blogs-books-and-courses-2.png)

[Source link: CompendiumDev.co.uk](http://www.compendiumdev.co.uk/)

[Source link: SeleniumSimplified.com](http://www.seleniumsimplified.com/)

[Source link: EvilTester.com](http://www.eviltester.com/)

[Source link: JavaForTesters.com](http://JavaForTesters.com/)

[Source link: @eviltester](https://twitter.com/eviltester)

[Source link: youtube.com/user/EviltesterVideos](http://www.youtube.com/user/EviltesterVideos)

[Source link: leanpub.com/javaForTesters](http://leanpub.com/javaForTesters)

[Source link: uk.linkedin.com/in/eviltester](http://uk.linkedin.com/in/eviltester)

---

<!-- Slide 6 -->

# Creating Systems - William Blake

“I must create a system. or be enslav'd by another Mans; I will not reason &amp; compare: my business is to create”

William Blake,

Jerusalem: The Emanation of the Giant Albion

![discussion 006 creating systems william blake](images/discussion-006-creating-systems-william-blake.png)

<http://www.blakearchive.org/exist/blake/archive/object.xq?objectid=jerusalem.e.illbk.10&java=no>

---

<!-- Slide 7 -->

# Abstraction

- Modelling
- Separation of concerns
- Logical vs Physical
- Functional vs Structural
- Interfaces vs Implementations
- Data / Entities / Persistence
- Functionality / Task Flow
- Goals / Strategies
- Layers – GUI, DB, HTTP
- Etc.

---

<!-- Slide 8 -->

# Example Test Without Abstraction

```java
    @Test
    public void canCreateAToDoWithNoAbstraction(){
        driver.get("http://todomvc.com/architecture-examples/backbone/");

        int originalNumberOfTodos = driver.findElements(
                                    By.cssSelector("ul#todo-list li")).size();

        WebElement createTodo = driver.findElement(By.id("new-todo"));
        createTodo.click();
        createTodo.sendKeys("new task");
        createTodo.sendKeys(Keys.ENTER);

        assertThat(driver.findElement(
                        By.id("filters")).isDisplayed(), is(true));

        int newToDos = driver.findElements(
                                By.cssSelector("ul#todo-list li")).size();
        assertThat(newToDos, greaterThan(originalNumberOfTodos));
    }
```

```java
    @Before
    public void startDriver(){
        driver = new FirefoxDriver();
    }
```

```java
    @After
    public void stopDriver(){
        driver.close();
        driver.quit();
    }
```

---

<!-- Slide 9 -->

# Example Test With Abstraction

```java
    @Test
    public void canCreateAToDoWithAbstraction(){
        TodoMVCUser user = new TodoMVCUser(driver, new TodoMVCSite());

        user.opensApplication().and().createNewToDo("new task");

        ApplicationPageFunctional page =
              new ApplicationPageFunctional(driver, new TodoMVCSite());
        assertThat(page.getCountOfTodoDoItems(), is(1));
        assertThat(page.isFooterVisible(), is(true));
    }
```

```java
    @Before
    public void startDriver(){
        driver = new FirefoxDriver();
    }
```

```java
    @After
    public void stopDriver(){
        driver.close();
        driver.quit();
    }
```

---

<!-- Slide 10 -->

# Why Abstraction?

- Change implementations
- Single Responsibility – only changes when necessary
- Makes automation readable and maintainable

---

<!-- Slide 11 -->

# Common Automation Abstractions

- Page Objects
- Element Abstractions: select, textbox, etc.
- Domain Objects
- Gherkin (Given/When/And/Then)
- Domain Specific Languages

---

<!-- Slide 12 -->

# Abstraction != Implementation

- Abstraction != Tool / Framework / Implementation
- Gherkin != Cucumber
- Page Object != Page Factory
- DSL != Keyword Driven

If we want to get good at abstraction then we need to model, split apart, and make the relationships clear

---

<!-- Slide 13 -->

# Throwing it open to the floor

The following slides are to aid discussion only, and may not be needed – that depends on you.

---

<!-- Slide 14 -->

# Common Automation Abstractions

- Page Objects
- Element Abstractions: select, textbox, etc.
- Domain Objects
- Gherkin (Given/When/And/Then)
- Domain Specific Languages
- Any More?
    - Create a List to discuss
    - Any public examples?
    - Any examples in the room that can be shared?

---

<!-- Slide 15 -->

# Problems, Problems, Problems

What problems have you seen?

- Can you respond to change?
- Is your framework hard to learn?
- Who hates it?
- Do you suffer from intermittent execution?
- Who maintains it?
- Automation Technical Debt?

---

<!-- Slide 16 -->

# Decisions, Decisions

What Design Decisions have you made?

- Page Object Design Decisions?
- Navigation Decisions?
- Tool Layers?
- What rules do you have?

---

<!-- Slide 17 -->

# Biases and Mandates

What Mandates have your decisions led to?

- All automation must use Given/When/Then?
- Execution layer is Gherkin? No xUnit?
- Page Objects must never return other Page Objects?
- Never pass Domain Objects into Page Objects?
- Never add an assert to the abstraction layer
- Never use implicit waits

---

<!-- Slide 18 -->

# Success, Success, Success

- What worked well?
- What did you change to get it working well?

---

<!-- Slide 19 -->

# Possibilities, Possibilities

- What have you yet to try?
    - Anyone with experience of that?

---

<!-- Slide 20 -->

# End Notes

Proceed no further, lest ye want to finish

---

<!-- Slide 21 -->

# Every Action Is an Experiment

“To the creative mind there is no right or wrong. Every action is an experiment, and every experiment yields its fruit in knowledge.”

The Illuminatus Trilogy

Robert Anton Wilson

---

<!-- Slide 22 -->

# Special Offer &amp; Slides etc.

- Visit
    - Discount code 'tmsummit2014' == $150 for

![discussion 004 special offer slides etc](images/discussion-004-special-offer-slides-etc.jpg)
