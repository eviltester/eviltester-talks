# Notes from the Presentation Source

## Slide 47

```text
SendKeys takes a CharSequence, but since this is an Interface and String implements it, we can use a String as  a parameter.
```

## Slide 49

```text
Wait
 makes test more robust
 get in the habit of identifying synchronisation points before problems happen
 What if the system is running slower?
 What if some javascript stops page being responsive, even though it has loaded?
Wait for title instead of assert?
 Title assertion is weak,
 Assert on 'is application still valid'
 Accomodates slow response from system
 WebDriver blocks on page load for simple html only
 Wait throws exception if it fails, so test will fail just like assertion
Clean up code:
 Re-use wait in a WebDriverWait variable
 Static import the ExpectedConditions methods
```

## Slide 53

```text
From WebDriverWaitExampleTest.java
Show the above test class and explaing polling time as well
Do a code completion on ExpectedConditions and show scope of conditions
Drop down inwo WebDriver wait method show that polling time is 500ms by default.
```

## Slide 57

```text
CustomExpectedConditionsExampleTest
```

## Slide 59

```text
InlineExpectedConditionExampleTest
MethodWrappedCustomExpectedConditionReturningWebElement
Worth recreating this live to show how to refactor to this construct.
```

## Slide 62

```text
Most people do 1 & 2 they improve maintenance when the physical world changes
3 & 4 improve readability and maintenance when the domain/requirement changes
```
