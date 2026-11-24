package com.eviltester.login;

import com.eviltester.tracks.TracksAccount;
import com.opera.core.systems.OperaDriver;
import org.junit.*;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.MatcherAssert.assertThat;

public class LoginTestJunitRefactor {

    // a first test to let me check
    // my investigation of the site
    // refactored to take advantage of JUnit @BeforeClass, @Before, @After, @AfterClass

    private static WebDriver driver;
    private TracksAccount tracks;

    // @BeforeClass happens once per class
    // I can initialise the driver in here
    @BeforeClass
    public static void startDriver(){
        driver = new FirefoxDriver();
    }

    // @Before happens before every method
    @Before
    public void prepForTest(){
        tracks = new TracksAccount();
    }

    @Test
    public void loginToTracks(){
        driver.get(tracks.tracks_url + "/tracks/login");

        WebElement userLogin = driver.findElement(By.id("user_login"));
        WebElement userPassword = driver.findElement(By.id("user_password"));

        WebElement signInButton = driver.findElement(By.name("login"));

        userLogin.sendKeys(tracks.userName);
        userPassword.sendKeys(tracks.password);
        signInButton.click();

        assertThat(driver.getTitle(), is("TRACKS::List tasks"));
    }

    @Test
    public void loginToTracksWaitForUserNameField(){

        driver.get(tracks.tracks_url + "/tracks/login");

        WebElement userLogin = new WebDriverWait(driver,10).until(ExpectedConditions.elementToBeClickable(By.id("user_login")));

        WebElement userPassword = driver.findElement(By.id("user_password"));

        WebElement signInButton = driver.findElement(By.name("login"));

        userLogin.sendKeys(tracks.userName);
        userPassword.sendKeys(tracks.password);
        signInButton.click();

        assertThat(driver.getTitle(), is("TRACKS::List tasks"));
    }

    @Test
    public void loginToTracksRefactoredInSitu(){

        //  make wait easy to access
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
    }

    @After
    public void closeSession(){
        driver.get(tracks.tracks_url + "/tracks/logout");

        // this driver.close() does not work on Windows 8, 2.28.0, with Firefox 18.0.1 does it work on windows 7?
        // After the close the driver.get cannot reconnect
        // if I use a logout after each test then it works fine as I haven't stopped the browser
        // it should work as this is what close is for
        //driver.close();
    }


    @AfterClass
    public static void quitDriver(){
        driver.quit();
    }
}