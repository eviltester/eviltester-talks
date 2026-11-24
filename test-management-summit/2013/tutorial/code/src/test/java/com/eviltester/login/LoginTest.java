package com.eviltester.login;

import com.eviltester.tracks.TracksAccount;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.MatcherAssert.assertThat;

public class LoginTest {

    // a first test to let me check
    // my investigation of the site


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

    @Test
         public void loginToTracksWaitForUserNameField(){

        WebDriver driver = new FirefoxDriver();
        TracksAccount tracks = new TracksAccount();

        driver.get(tracks.tracks_url + "/tracks/login");

        WebElement userLogin = new WebDriverWait(driver,10).until(ExpectedConditions.elementToBeClickable(By.id("user_login")));

        WebElement userPassword = driver.findElement(By.id("user_password"));

        WebElement signInButton = driver.findElement(By.name("login"));

        userLogin.sendKeys(tracks.userName);
        userPassword.sendKeys(tracks.password);
        signInButton.click();

        assertThat(driver.getTitle(), is("TRACKS::List tasks"));

        driver.get(tracks.tracks_url + "/tracks/logout");

        driver.quit();

    }

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

        driver.get(tracks.tracks_url + "/tracks/logout");

        // quit driver
        driver.quit();
    }
}