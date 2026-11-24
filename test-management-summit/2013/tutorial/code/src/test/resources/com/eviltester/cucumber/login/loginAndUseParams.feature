Feature: We can use params in our steps to aid reuse and clarity

  Background: We can add params to the steps and change data in the scenarios

    Scenario: A known user can login
      Given a default user
      When the user enters "user" and "password" to login
      Then they are taken to their account home page

    Scenario: A user who gets his password wrong can not login
      Given a default user
      When the user enters "user" and "wrongword" to login
      Then they are still on the login page
