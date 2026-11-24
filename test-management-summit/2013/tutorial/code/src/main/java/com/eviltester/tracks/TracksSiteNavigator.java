package com.eviltester.tracks;

import org.openqa.selenium.WebDriver;

/**
 * A Navigation object for tracks sites
 */
public class TracksSiteNavigator {
    private final TracksSite site;
    private final WebDriver driver;

    public TracksSiteNavigator(WebDriver driver, TracksSite tracksSite) {
        this.driver = driver;
        this.site = tracksSite;
    }

    public String getLoginPageURL(){
        return site.getLoginURL();
    }

    public void gotoLoginPage() {
        driver.get(getLoginPageURL());
    }

    public void gotoLogoutPage() {
        driver.get(site.getLogoutURL());
    }
}
