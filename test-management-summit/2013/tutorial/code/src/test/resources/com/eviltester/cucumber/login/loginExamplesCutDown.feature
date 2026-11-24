Feature: We can combine examples and minimialism

  Background: Remember we model our domain and use the tools to do that
              #Given we sometimes don't need Given When Then
              #When we don't need them
              #Then we don't use them

    Scenario Outline:

      * A user cannot login with incorrect "<username>" and "<password>"

    Examples:
      | username  | password |
      | user      | rubbish  |
      | badname   | password |