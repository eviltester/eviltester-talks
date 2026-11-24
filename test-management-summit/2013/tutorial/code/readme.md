## BDD Tutorial Demonstration Code

The original code snapshot accompanying Alan Richardson's "Lessons Learned with BDD" tutorial at the Test Management Summit in January 2013.

- [Tutorial slides and materials](../)
- [Prepared setup and refactoring walkthrough](../walkthrough.md)
- [Published BDD examples repository](https://github.com/eviltester/bddexamples)
- [Conference page](https://www.eviltester.com/conference/tmsJan2013_conference/)

This snapshot differs from the published repository. Its 22 project files are retained unchanged, including the FitNesse wiki pages.

## Project Contents

- [Maven configuration](pom.xml)
- [Application and domain objects](src/main/java/com/eviltester/tracks/)
- [JUnit examples at different stages of refactoring](src/test/java/com/eviltester/login/)
- [Cucumber-JVM runner](src/test/java/com/eviltester/cucumber/RunCukeTests.java) and [step definitions](src/test/java/com/eviltester/cucumber/login/LoginStepDefinitions.java)
- [Gherkin feature examples](src/test/resources/com/eviltester/cucumber/login/)
- [FitNesse fixture](src/test/java/com/eviltester/fitnesse/AKnownUserCanLogin.java) and [wiki pages](BddTutorial/)

## Historical Setup

The Maven project targets Java 1.7 and uses Selenium 2.28.0, Cucumber-JVM 1.1.1, JUnit 4.11, Hamcrest 1.3, and OperaDriver 1.1. The examples automate a locally installed Tracks application, configured through the `TRACKS_URL`, `TRACKS_USERNAME`, and `TRACKS_PASSWORD` system properties in [TracksAccount](src/main/java/com/eviltester/tracks/TracksAccount.java).

The walkthrough records the original installation and refactoring steps. The project has been archived without updating dependencies or running its tests against an application. The FitNesse server and Tracks application are not bundled.

FitNesse's `content.txt` and `properties.xml` files retain their runtime filenames. The separate teaching notes have been converted to the Markdown walkthrough linked above.
