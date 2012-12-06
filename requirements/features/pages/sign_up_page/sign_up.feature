Feature: Sign Up

  As a guest 
  I want to sign up
  so that I can participate in a game of Humans vs Zombies

  Scenario: Any guest should be able to sign up for a new account
    Given I am a guest
    When  I go to the "Sign Up" page
    And   I enter my credentials
    And   I submit my information
    Then  I should be taken to the "Landing Page"

  Scenario: Guests need to enter the following required credentials
    Given I am a guest
    When  I go to the "Sign Up" page
    Then  I should see the following fields
      | Fields          |
      | Name            |
      | Forum User Name |
      | Email           |

  Scenario: Guests will receive an error message if they don't fill in a required field
    Given I am a guest
    When  I go to the "Sign Up" page
    And   I submit blank information
    Then  I should see the following errors
      | Errors                         |
      | 'Name' is required.            |
      | 'Forum User Name' is required. |
      | 'Email' is required.           |
