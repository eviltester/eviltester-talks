package com.eviltester.cucumber.login;

import com.eviltester.tracks.LoginPage;
import com.eviltester.tracks.TracksAccount;
import com.eviltester.tracks.TracksSite;
import com.eviltester.tracks.TracksSiteNavigator;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import cucumber.api.java.en_pirate.Avast;
import cucumber.runtime.PendingException;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;

import static org.hamcrest.CoreMatchers.endsWith;
import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.MatcherAssert.assertThat;

public class LoginStepDefinitions {

    private TracksAccount tracksAccount;


    @Given("^a default user$")
    public void a_default_user() throws Throwable {
        tracksAccount = new TracksAccount();
        //TODO: tech debt, TracksAccount models the default user because I don't pass any params to the constructor but is a slightly different approach - revisit this
    }

    private WebDriver driver;

    private TracksSiteNavigator tracks;

    @When("^the default user logs in$")
    public void the_default_user_logs_in() throws Throwable {

        driver = new FirefoxDriver();

        tracks = new TracksSiteNavigator(driver, new TracksSite(tracksAccount.tracks_url));

        tracks.gotoLoginPage();

        LoginPage loginPage = new LoginPage(driver);

        loginPage.typeUserName(tracksAccount.userName);
        loginPage.typePassword(tracksAccount.password);
        loginPage.signIn();
    }

    @Then("^they are taken to their account home page$")
    public void they_are_taken_to_their_account_home_page() throws Throwable {
        assertThat(driver.getTitle(), is("TRACKS::List tasks"));

        driver.get(tracksAccount.tracks_url + "/tracks/logout");

        driver.quit();
    }


    @When("^a default user logs in with the correct credentials$")
    public void a_default_user_logs_in_with_the_correct_credentials() throws Throwable {
        a_default_user();
        the_default_user_logs_in();
    }

    // allow the * annotation to match - it could be When, Then or any of the annotations
    @Given("^A default user can log in with the correct credentials$")
    public void default_user_can_login_with_the_correct_credentials() throws Throwable{
        a_default_user();
        the_default_user_logs_in();
        they_are_taken_to_their_account_home_page();
    }

    // look, we didn't refactor, just copy and pasted code to reuse it
    // bad programmer, bad programmer
    @When("^the user enters \\\"([^\\\"]*)\\\" and \\\"([^\\\"]*)\\\" to login$")
    public void the_user_enters_username_and_password_to_login(String username, String password) throws Throwable {
        driver = new FirefoxDriver();

        tracks = new TracksSiteNavigator(driver, new TracksSite(tracksAccount.tracks_url));

        tracks.gotoLoginPage();

        LoginPage loginPage = new LoginPage(driver);

        loginPage.typeUserName(username);
        loginPage.typePassword(password);
        loginPage.signIn();
    }

    @Then("^they are still on the login page$")
    public void they_are_still_on_the_login_page() throws Throwable {

        LoginPage loginPage = new LoginPage(driver);

        assertThat(driver.getCurrentUrl(), endsWith(tracks.getLoginPageURL()));
        assertThat(loginPage.loginUnsuccessfulMessageIsPresent(), is(true));

        driver.quit();
    }

    @Given("^A user cannot login with incorrect \\\"([^\\\"]*)\\\" and \\\"([^\\\"]*)\\\"$")
    public void a_user_cannot_login_with_incorrect_username_and_password(String username, String password) throws Throwable {
        a_default_user();
        the_user_enters_username_and_password_to_login(username, password);
        they_are_still_on_the_login_page();
    }
}
