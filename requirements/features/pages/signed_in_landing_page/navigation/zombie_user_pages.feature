Feature: Zombie User Pages

  As a Zombie, Original Zombie, Moderator User
  I want to view Zombie specific pages
  so that I can fulfill my role as a Zombie

  Scenario Outline: Only zombies, original zombies and moderators have access to the Zombie forums
    Given I am logged in as a "<User Type>"
    When  I view game information
    And   I go to the "Game Forum" page
    Then  I should see a link to the "Zombie Forum"
  Examples:
    | User Type       |
    | Zombie          |
    | Original Zombie |
    | Moderator       |
