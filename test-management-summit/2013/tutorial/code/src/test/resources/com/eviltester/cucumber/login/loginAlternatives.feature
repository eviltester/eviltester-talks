Feature: Given When Then is not enforced in Cucumber

  Background: We don't have to stick to Given When Then

    Scenario: Default user can login
      When a default user logs in with the correct credentials
      Then they are taken to their account home page

    Scenario: A Default user should be able to login
      * A default user can log in with the correct credentials
