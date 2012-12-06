Feature: Current Games

  As any user participating in a game of Human Vs Zombies
  I want to see my current games on my landing page
  so that I can view the game information

  Scenario: Current Games List
    Given I am logged in as any user
    When  I am registered for a game that is currently happening
    Then  I should see a game in the "Current Game" section

  Scenario Outline: the Current Game details should display the user's status
    Given I am logged in as a "<User Type>"
    When  I am registered for a game that is currently happening
    Then  I should see "<User Type>" as my status
  Examples:
    | User Type       |
    | Zombie          |
    | Human           |
    | Original Zombie |
    | Moderator       |

  Scenario: the Current Game details should display the number of humans and zombies in the game
    Given I am logged in as any user
    When  I am registered for a game that is currently happening
    Then  I should see the "Number of Humans"
    And   I should see the "Number of Zombies"

  Scenario: the Current Game details should display the amount of time remaining for the game
    Given I am logged in as any user
    When  I am registered for a game that is currently happening
    Then  I should see the "Time Remaining"

  Scenario: the Current Game details should display the user's Kill ID for that game
    Given I am logged in as any user
    When  I am registered for a game that is currently happening
    Then  I should see the "Kill ID"

  Scenario: the Current Games section does not appear if there are no Current Games
    Given I am logged in as any user
    When  there are no current games
    Then  I should not see the "Current Games" section
