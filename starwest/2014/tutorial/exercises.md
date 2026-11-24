# STARWEST 2014 Tutorial - Exercise and Demonstration Index

This index was prepared during migration from the prompts in the [180-slide tutorial](slides.md). Slide numbers refer to that deck and its [PDF export](export/handsOnWebDriverOneDay.pdf). It is an index, not an original separate exercise handout; the referenced course template files are not bundled here.

The tutorial advises participants to ask for help when stuck, continue exercises as the session moves on, and read, run, or debug the answer code (slide 5).

| Activity | Source slides | Prompt or example in the deck |
| --- | --- | --- |
| [Download, run, and import](slides.md#exercises-download-run-import) | 6, 10 | Demonstrate `mvn -Dtest=TheDemoTest test`; download the code, run `mvn test -Dtest=MyFirstTest`, open the `pom.xml` in IntelliJ, and run `MyFirstTest` from the IDE. |
| [Expand MyFirstExtendedTest](slides.md#do-exercise-expand-myfirstextendedtest) | 28-30 | Use `.get` instead of navigation; check the title is `Basic Web Page Title` and element `para1` contains `A paragraph of text`. The deck names `exercises.myfirsttest.MyFirstExtendedTest.java` and includes example code. |
| [JUnit exercises](slides.md#do-the-junit-exercises) | 37-42 | Discuss the current test, demonstrate `@Before` and `@After` in `JunitBeforeAfterDemoTest`, refactor the example, then do the JUnit exercises. |
| [Navigation and interrogation exercises](slides.md#do-the-navigation--interrogation-exercises) | 61 | Exercise prompt following the navigation, locating, and interrogation examples. |
| [Manipulation exercises](slides.md#do-the-manipulation-exercises) | 68 | Exercise prompt following the WebElement manipulation and `sendKeys` examples. |
| [Manual CSS selectors](slides.md#do-exercise-manual-css-selectors) | 79 | Exercise prompt following CSS selector syntax and `By.cssSelector` examples. |
| [Manual XPath selectors](slides.md#do-exercise-manual-xpath-selectors) | 87 | Exercise prompt following XPath syntax and chained XPath/CSS examples. |
| [CSS basic exercises](slides.md#do-exercise-css-basic-exercises) | 89 | A further CSS exercise prompt after the manual selector exercises. |
| [Basic synchronisation exercises](slides.md#do-the-basic-synchronisation-exercises) | 93-102 | Demonstrate the AJAX page in debug mode and to failure; explore implicit and explicit waits, then do the basic synchronisation exercises. |
| [Custom expected condition exercises](slides.md#custom-expected-condition-synchronisation-exercises) | 109-113 | Examples of a custom condition, an inline condition, and a method-wrapped condition, followed by the exercise prompt. |
| [Page object exercises](slides.md#do-the-page-object-exercises) | 122-134 | Demonstrations cover POJO page objects, refactoring, Page Factory, and SlowLoadableComponent before the exercise prompt. |
| [Free-form automation](slides.md#time-for-free-for-all-automation) | 171 | Optional automation prompt in the bonus material. |

For prompts that name an exercise without further instructions, consult the surrounding slides and the historical code locations in the [tutorial README](readme.md). No missing exercise instructions or answers have been reconstructed.
