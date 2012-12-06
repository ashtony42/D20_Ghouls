@valid_user_logins
Feature: Valid User Login Types

  As a person wanting to interact with Humans Vs Zombies
  I want to be able to log in
  So that I can use the website

  Scenario Outline: I should be able to log in as each user type
    Given I am a <User Type> named <Name>
    When  I log in
    Then  I should see "Welcome <Name>"
    And   I should see site content relevant for the <User Type>
  Examples:
    | User Type       | Name         |
    | Basic           | Davy Jones   |
    | Moderator       | Basil Grows  |
