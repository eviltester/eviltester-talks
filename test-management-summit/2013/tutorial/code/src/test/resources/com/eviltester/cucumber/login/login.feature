Feature: Can login to the application

  Background: A user can login
              to the application

  We want the user to login because
  every user has their own projects
  and they can't be shared between users

    Scenario: Login with valid credentials
      Given a default user
      When the default user logs in
      Then they are taken to their account home page

