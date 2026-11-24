# Demo setup and refactoring walkthrough

Prepared teaching notes retained with the 2013 tutorial source. The source also refers to a webinar. These notes show intermediate code and refactoring steps; they are not a transcript or a single runnable program. The original wording and code are retained.

The [code snapshot](code/) contains the accompanying project. Hostnames and example credentials in these historical notes refer to the original local Tracks demonstration environment.

## Setup the project

Create a project

with a pom file

bring in hamcrest, junit, selenium, operadriver

```xml
<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
    <modelVersion>4.0.0</modelVersion>

    <groupId>tracksAutomation</groupId>
    <artifactId>tracksAutomation</artifactId>
    <version>1.0-SNAPSHOT</version>
    <packaging>jar</packaging>

    <name>tracksAutomation</name>
    <url>http://seleniumsimplified.com</url>

    <properties>
        <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
    </properties>

    <dependencies>

        <!-- http://mvnrepository.com/
            hamcrest-all
            junit
            org.seleniumhq.selenium
            operadriver
        -->

        <!-- if we use junit-dep then we can bring in the full hamcrest -->
        <!-- JUnit 4.10 depends on hamcrest 1.1 -->
        <dependency>
            <groupId>org.hamcrest</groupId>
            <artifactId>hamcrest-all</artifactId>
            <version>1.3</version>
        </dependency>

        <dependency>
            <groupId>junit</groupId>
            <artifactId>junit</artifactId>
            <version>4.11</version>
        </dependency>

        <dependency>
            <!-- bring in the full selenium deploy
                 we could be more selective and bring
                 only what we need -->
            <groupId>org.seleniumhq.selenium</groupId>
            <artifactId>selenium-server</artifactId>
            <version>2.28.0</version>
        </dependency>

        <dependency>
            <groupId>com.opera</groupId>
            <artifactId>operadriver</artifactId>
            <version>1.1</version>
        </dependency>



    </dependencies>

    <!-- I have added the build section to support importing into
IntelliJ automatically without throwing errors about wrong Java
Version. This basically says the source requires at least Java 1.7
and use a compiler that outputs Java 1.7 -->
    <build>
        <plugins>
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-compiler-plugin</artifactId>
                <configuration>
                    <source>1.7</source>
                    <target>1.7</target>
                </configuration>
            </plugin>
        </plugins>
    </build>

</project>
```

## Initial Domain Object

Create a TracksAccount.java that reads username and password from properties

this allows us to:

- check in code without revealing passwords

- start building up some application domain objects

- can override these properties at build time and execution time through hudson

I'm taking a non-usual aproach with the class you may choose not to copy it

I've made the fields public, so I don't have to write accessors for them.

That violates a bunch of standards but I don't really care at the moment.

```java
package com.eviltester.tracks;

public class TracksAccount{

    // http://bitnami.org/stack/tracks#virtualMachine

    // I setup the default install with user, password

    /* Remember to setup the username and password that you are going to use for tracks
     * otherwise you will end up with the defaults below */
    private static final String TRACKS_USERNAME_KEY = "TRACKS_USERNAME";
    private static final String TRACKS_PASSWORD_KEY = "TRACKS_PASSWORD";
    private static final String TRACKS_URL_KEY = "TRACKS_URL";

    public final String userName;
    public final String password;
    public final String tracks_url;

    public TracksAccount(){
        userName = System.getProperty(TRACKS_USERNAME_KEY, "user");
        password = System.getProperty(TRACKS_PASSWORD_KEY, "password");
        tracks_url = System.getProperty(TRACKS_URL_KEY, "http://192.168.1.171:800");
    }

}
```

## Now survey the site

First thing I want to to is survey the site

http://192.168.1.171:800/tracks/login

first thing I have to do is login

http://192.168.1.171:800/tracks

If I'm not logged in then I redirect to

http://192.168.1.171:800/tracks/login

So I can go straight to this if I want to login

I can do inspect element on the page and I'll see the fields

input id user\_login for username

input id user\_password for the password

login button

input name login

and title is "TRACKS::Login"

when I login I am on a different page

http://192.168.1.171:800/tracks/

things that might tell me I'm on this page are

title: "TRACKS::List tasks"

presence of logout link

a href = "/tracks/logout"

Then we can see a bunch of things etc on the page

The first thing to automate then is the login process

## Create a basic test

- Basic test lets me check that I have everything setup

debug through the test to check it works

run it without debug and see that it passes

```java
    @Test
    public void loginToTracks(){

        WebDriver driver = new FirefoxDriver();
        TracksAccount tracks = new TracksAccount();

        driver.get(tracks.tracks_url + "/tracks/login");

        WebElement userLogin = driver.findElement(By.id("user_login"));
        WebElement userPassword = driver.findElement(By.id("user_password"));

        WebElement signInButton = driver.findElement(By.name("login"));

        userLogin.sendKeys(tracks.userName);
        userPassword.sendKeys(tracks.password);
        signInButton.click();

        assertThat(driver.getTitle(), is("TRACKS::List tasks"));

        driver.get(tracks.tracks_url + "/tracks/logout");

        driver.quit();
    }
```

explain hamcrest assertThat

## Evaluate what we have done

Do we need to wait for the username?

```java
WebElement userLogin = new WebDriverWait(driver,10).until(ExpectedConditions.elementToBeClickable(By.id("user_login")));
```

explain the webDriverWait

At what point do we need to introduce synchronisation?

I got away with it. Will I always? I don't know.

## refactor the test in situ

create a WebDriverWait wait variable

```java
        WebDriverWait wait =  new WebDriverWait(driver,10);
```

create a TRACKS\_LOGIN\_URL for the login url

```java
     final String TRACKS_LOGIN_URL = tracks.tracks_url + "/tracks/login";
```

I could allocate the By construction to variables:

```java
        By user_login_text_field = By.id("user_login");
        By user_password_text_field = By.id("user_password");
        By sign_in_button = By.name("login");
```

I add some comments to explain what is going on

```java
    @Test
    public void loginToTracksRefactoredInSitu(){

        // startup driver and make wait easy to access
        WebDriver driver = new FirefoxDriver();
        WebDriverWait wait =  new WebDriverWait(driver,10);

        // page object locators
        By user_login_text_field = By.id("user_login");
        By user_password_text_field = By.id("user_password");
        By sign_in_button = By.name("login");

        // get track details
        TracksAccount tracks = new TracksAccount();
        final String TRACKS_LOGIN_URL = tracks.tracks_url + "/tracks/login";

        // goto login page
        driver.get(TRACKS_LOGIN_URL);

        // make sure page is loaded, setup the page controls
        WebElement userLogin = wait.until(ExpectedConditions.elementToBeClickable(user_login_text_field));
        WebElement userPassword = driver.findElement(user_password_text_field);
        WebElement signInButton = driver.findElement(sign_in_button);

        // login
        userLogin.sendKeys(tracks.userName);
        userPassword.sendKeys(tracks.password);
        signInButton.click();

        // check we are logged in
        assertThat(driver.getTitle(), is("TRACKS::List tasks"));

       // logout
       driver.get(tracks.tracks_url + "/tracks/logout");

        // quit driver
        driver.quit();
    }
```

That is fairly readable and that is actually what a lot of WebDriver tests look like

## Refactor to make better use of JUnit

I'm going to refactor to make better use of JUnit

take advantage of JUnit @BeforeClass, @Before, @After, @AfterClass

Really what I want to do is refactor into page objects and we'll cover that next

```java
    // @BeforeClass happens once per class
    // I can initialise the driver in here
    @BeforeClass
    public static void startDriver(){
        driver = new FirefoxDriver();
    }
```

I have to make it static, and any fields referenced in here static because it happens at a class level.

```java
    // @Before happens before every method
    @Before
    public void prepForTest(){
        tracks = new TracksAccount();
    }

    @After
    public void closeSession(){
        driver.get(tracks.tracks_url + "/tracks/logout");
    }

    @AfterClass
    public static void quitDriver(){
        driver.quit();
    }
```

Good thing here is that if the test fails, then the browser will still be closed, and the driver will quit. So nothing will be left hanging around.

I logout after each test so the next test can start clean

## Things to Research for people on the webinar

Junit

Hamcrest

@BeforeClass, @Before, @After, @AfterClass

ExpectedConditions

## next refactor the Login Test to page objects

start by creating a TracksSite that we construct with the URL of the site

```java
 TracksSite site = new TracksSite(tracks.tracks_url);
```

A lot of people might not create a Site object and dive straight in to page objects but I figure that the physical domain I'm modelling has the concept of a site and the site has pages. Certainly I need to track the root url somewhere so I'll do that on the Site.

In the test I'll start using the site object to provide me with the urls.

getLoginURL

```java
driver.get(site.getLoginURL());
```

getLogoutURL

```java
driver.get(site.getLogoutURL());
```

Now it is time to start working at a page level so I'm going to create a new login page, initially I'm going to construct this with the driver.

```java
LoginPage loginPage = new LoginPage(driver);
```

I add the driver because I'm going to need to do things on that page, and interrogate it

Other choices could have been site.getLoginPage or site.login or site.gotoLoginPage etc.

I'm going to keep the login page really simple so I want to be able to say

```java
        loginPage.typeUserName(tracks.userName);
        loginPage.typePassword(tracks.Password);
        loginPage.signIn();
```

I'll now fill in the blanks so that those commands work.

I have all the code to do this so I'll move it into the page object.

```java
package com.eviltester.tracks;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

public class LoginPage {
    private final WebDriver driver;

    public LoginPage(WebDriver driver) {
        this.driver = driver;
    }

    public void typeUserName(String userName) {
        WebElement userLogin = driver.findElement(By.id("user_login"));
        userLogin.sendKeys(userName);
    }

    public void typePassword(String password) {
        WebElement userPassword = driver.findElement(By.id("user_password"));
        userPassword.sendKeys(password);
    }

    public void signIn() {
        WebElement signInButton = driver.findElement(By.name("login"));
        signInButton.click();
    }

}
```

At the moment I don't really see the need to refactor this much because everything is used in a single place e.g. I'll leave the By.id(etc.) where it is rather than refactor it out into a variable. If I reuse it, then I'll refactor it.

Things that are different here than a lot of people do.

A lot of people have a goto method on the page. Reasons why I don't like doing that is that navigation doesn't feel like a page responsibility to me. But sometimes I add it to help make the tests easier.

Here, I'm modelling the physical page and this seems ok, I might choose to make signIn clickSignInButton but at the moment I'm happy with that.

The loginPage itself knows nothing about its url, or location on the site, just what elements are on the page and how to manipulate them - at the moment. If my object model stays as clean as this all the way through then I'll be happy.

So looking back at the test I can see that I've got the driver.get methods, and it feels like I should refactor those out into an object.

I thinkI'm going to refactor the name of The TracksAccount to tracksAccount.

```java
    @Test
    public void loginToTracks(){

        WebDriver driver = new FirefoxDriver();
        TracksAccount tracksAccount = new TracksAccount();

        TracksSite site = new TracksSite(tracksAccount.tracks_url);

        driver.get(site.getLoginURL());

        LoginPage loginPage = new LoginPage(driver, site);

        loginPage.typeUserName(tracksAccount.userName);
        loginPage.typePassword(tracksAccount.password);
        loginPage.signIn();

        assertThat(driver.getTitle(), is("TRACKS::List tasks"));

        driver.get(site.getLogoutURL());

        driver.quit();
    }
```

I'm going to add the navigation to pages into a TracksSiteNavigator object at the moment.

```java
TracksSiteNavigator tracks = new TracksSiteNavigator(driver, new TracksSite(tracksAccount.tracks_url));
```

```java
    @Test
    public void loginToTracks(){

        WebDriver driver = new FirefoxDriver();
        TracksAccount tracksAccount = new TracksAccount();

        TracksSiteNavigator tracks = new TracksSiteNavigator(driver, new TracksSite(tracksAccount.tracks_url));

        tracks.gotoLoginPage();

        LoginPage loginPage = new LoginPage(driver);

        loginPage.typeUserName(tracksAccount.userName);
        loginPage.typePassword(tracksAccount.password);
        loginPage.signIn();

        assertThat(driver.getTitle(), is("TRACKS::List tasks"));

        tracks.gotoLogoutPage();

        driver.quit();
    }
```

That is a fairly neat test

But I'm going to use JUnit to tidy this up with the annotations

I can share the driver, account, and navigator across tests so I'll that into @BeforeClass

And I can quite the driver after running all the tests so that goes into @AfterClass

I want to logout after each test so logout will go in @After

I can refactor the local variables into fields with Ctrl+Alt+F

Remember to make everything in @BeforeClass and @AfterClass static

```java
    private static TracksSiteNavigator tracks;
    private static TracksAccount tracksAccount;
    private static WebDriver driver;

    @BeforeClass
    public static void prepForTest(){
        driver = new FirefoxDriver();
        tracksAccount = new TracksAccount();
        tracks = new TracksSiteNavigator(driver, new TracksSite(tracksAccount.tracks_url));
}

    @Test
    public void loginToTracks(){

        tracks.gotoLoginPage();

        LoginPage loginPage = new LoginPage(driver);

        loginPage.typeUserName(tracksAccount.userName);
        loginPage.typePassword(tracksAccount.password);
        loginPage.signIn();

        assertThat(driver.getTitle(), is("TRACKS::List tasks"));
    }


    @After
    public void logout(){
        tracks.gotoLogoutPage();
    }

    @AfterClass
    public void tearDown(){
        driver.quit();
    }

}
```

That is much neater

Something interesting has happened to the "page objects"

I know have some relating to pages and browser site

LoginPage

TracksSiteNavigator

And some related to the logical domain of an Account, and a Site

TracksAccount

TracksSite

I don't know if that will stay like that, but I'm fairly happy with that distinction.

---

Next embellish these tests so that we do more interrogation on the pages.
