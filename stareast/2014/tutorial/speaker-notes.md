# Notes from the Tutorial Presentation Source

## Slide 56

```text
SendKeys takes a CharSequence, but since this is an Interface and String implements it, we can use a String as  a parameter.
```

## Slide 64

```text
'anything'
 =======
*  - anything
*[id] - anything with an id
*.specialDiv
match id
======
#p4 - an id
match class
========
.specialDiv
.normal
.has   (match on multiples)
match tags
 =======
p
a
a.normal  (combine with class)
p#p4  (combine with id)
match attribute name
==============
[class]  a thing with a class
[name]
tag[attribute]
========
div[class]
div[name]
tag[attribute='value']
========
div[class='normal']
div[class='specialDiv']
div[class="specialDiv"]
and grouping
========
tag[class='nestedDiv'][name='nestedDiv']
or grouping
div[class='normal'],div[class='nestedDiv']
Partial matches
=========
tag[attribute*='i']  - anywhere
tag[attribute^='ne']  - start of
tag[attribute$='iv']  - end of
tag[class~='has']  - space separated
```

## Slide 69

```text
Select all links
	a
Select the div
	div[id='toggle_forms']
	div[id=toggle_forms]
	div#toggle_forms
	#toggle_forms
Select the anchor
	a[title='Hide new action form (Alt+N)']
	a[title^='Hide new action']
	a[title$='(Alt+N)']
No css selector can match all the context items we would have to chain code constructs.
```

## Slide 73

```text
Functions:
//p[contains(.,"This")]
//*[starts-with(@class,'nor')]
Operators
//*[starts-with(@class,'nor') and @name='pName1']
```

## Slide 76

```text
Select all links
	//a
Select the div
	//div[@id='toggle_forms']
Select the anchor
	//a[@title='Hide new action form (Alt+N)']
	//a[starts-with(@title,'Hide new action')]
	//a[contains(@title,'(Alt+N)')]
	//a[substring(@title,string-length(@title) -6, 7) ='(Alt+N)']
//h2/a[starts-with(@href,'/tracks/contexts/') and .='contextname']/../../div/div[starts-with(@id,"todo_")]
```

## Slide 79

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

## Slide 83

```text
From WebDriverWaitExampleTest.java
Show the above test class and explaing polling time as well
Do a code completion on ExpectedConditions and show scope of conditions
Drop down inwo WebDriver wait method show that polling time is 500ms by default.
```

## Slide 87

```text
CustomExpectedConditionsExampleTest
```

## Slide 89

```text
InlineExpectedConditionExampleTest
MethodWrappedCustomExpectedConditionReturningWebElement
Worth recreating this live to show how to refactor to this construct.
```

## Slide 93

```text
Most people do 1 & 2 they improve maintenance when the physical world changes
3 & 4 improve readability and maintenance when the domain/requirement changes
```

## Slide 108

```text
how to handle alerts e.g.
	public boolean clickNormalButtonAndExpectPopUp() {
		driver.findElement(By.id("gwt-debug-cwBasicButton-normal")).click();
		Boolean alertTextOK;
		alertTextOK = driver.switchTo().alert().getText().contentEquals("Stop poking me!");
		driver.switchTo().alert().accept();
		return alertTextOK;
	}
We can use accept or dismiss on the dialog
If alert is not present then we will get a null pointer exception when trying to access it, so if we wanted to, we could wrap this in an ExpectedCondition wait and check for it
```
