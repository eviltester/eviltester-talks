package com.eviltester.tracks;

import org.openqa.selenium.By;
import org.openqa.selenium.NoSuchElementException;
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

    public boolean loginUnsuccessfulMessageIsPresent(){
        WebElement messageHolder;

        try{
            messageHolder = driver.findElement(By.id("flash"));
        }catch(NoSuchElementException e){
            return false;
        }

        if(!messageHolder.isDisplayed()){
            return false;
        }

        if(messageHolder.getText().equals("Login unsuccessful.")){
            return true;
        }

        return false;
    }
}
