# Notes from the Presentation Source

Prepared speaker notes retained from the original presentation. These are preparation materials, not a transcript. Slide numbers refer to the Markdown deck and matching PDF in this folder.

## Slide 22 - First Test

This is in FirstTest.java

## Slide 23 - First Test Explained

We need to create a driver before we can do anything.

HtmlUnitDriver is a headless browser implemented using HtmlUnit

<http://htmlunit.sourceforge.net/>

Advantages:

\- Fast

\- good for simple testing

Disadvantages:

\- does not handle JavaScript well

Use the WebDriver interface rather than the Driver object.

Explore some of the WebDriver commands and documentation.

InteliJ config project view to AutoScroll (\*v)

## Slide 24 - Real Browser Explored

Drivers exist for a bunch of different browsers, they can be downloaded separately or through a single pom include.

Some browsers require separate driver executables to be installed: opera, chrome (we will look at this later)

Firefox is easy so we tend to default to it.

Physical browsers have to be closed, otherwise you will have a bunch of browsers open on your screen.

.open()

close current browser window (and browser if last window)

.quit()

Close browser and all windows

## Slide 25 - What are the basics that we need to know so that we can automate the web?

Interaction with class to see what they think the basics are.

Make a note of their suggestions and compare with the basic knowledge on the next slide.

## Slide 26 - Basic Knowledge Chunked

Discuss the class identified basics in terms of the hierarchy here.

Is everything the class listed covered by the course in some way?

If not is there an easy way to adjust to fit it in?

## Slide 31 - Navigation Example Test

This is NavigationExampleTest.java

## Slide 39 - WebElement Manipulation

SendKeys takes a CharSequence, but since this is an Interface and String implements it, we can use a String as a parameter.

## Slide 46 - Alerts

The only new thing to learn from the BasicButtonPanel is how to handle alerts.

```java
	public boolean clickNormalButtonAndExpectPopUp() {
		driver.findElement(By.id("gwt-debug-cwBasicButton-normal")).click();
		Boolean alertTextOK;
		alertTextOK = driver.switchTo().alert().getText().contentEquals("Stop poking me!");
		driver.switchTo().alert().accept();
		return alertTextOK;
	}
```

We can use accept or dismiss on the dialog

If alert is not present then we will get a null pointer exception when trying to access it, so if we wanted to, we could wrap this in an ExpectedCondition wait and check for it

## Slide 67 - Try Different Browsers

You might want to try the VirtualPC compatibility images and try learning about the remoteWebDriver.
