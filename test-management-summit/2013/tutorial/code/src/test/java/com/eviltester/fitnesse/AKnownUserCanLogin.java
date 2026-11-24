package com.eviltester.fitnesse;

import com.eviltester.tracks.LoginPage;
import com.eviltester.tracks.TracksAccount;
import com.eviltester.tracks.TracksSite;
import com.eviltester.tracks.TracksSiteNavigator;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.MatcherAssert.assertThat;

public class AKnownUserCanLogin {

    private WebDriver driver;
    private TracksSiteNavigator tracks;
    private TracksAccount tracksAccount;
    private String username;
    private String password;
    private String successCode;

    public AKnownUserCanLogin(){}


    public void setUsername(String username){
        this.username = username;
    }

    public void setPassword(String password){
        this.password = password;

    }

    public String success(){
        return successCode;
    }

    public void execute(){
        loginWithKnownUser();
    }

    private void loginWithKnownUser(){

        successCode="loggedin";

        tracksAccount = new TracksAccount();
        driver = new FirefoxDriver();

        try{
            tracks = new TracksSiteNavigator(driver, new TracksSite(tracksAccount.tracks_url));

            tracks.gotoLoginPage();

            LoginPage loginPage = new LoginPage(driver);

            loginPage.typeUserName(this.username);
            loginPage.typePassword(this.password);
            loginPage.signIn();

            assertThat(driver.getTitle(), is("TRACKS::List tasks"));
        }catch(AssertionError e){
            successCode = "failed";
        }


        driver.get(tracksAccount.tracks_url + "/tracks/logout");
        driver.quit();
    }
}
