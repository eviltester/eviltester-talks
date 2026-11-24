Feature: We can use examples in our feature files

  Background: We can use examples to illustrate the data effectively

    Scenario Outline: A user cannot login with incorrect details
      Given a default user
      When the user enters "<username>" and "<password>" to login
      Then they are still on the login page

      Examples:
      | username  | password |
      | user      | rubbish  |
      | badname   | password |
