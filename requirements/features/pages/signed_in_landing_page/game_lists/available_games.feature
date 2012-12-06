Feature: Available Games

  As any user wanting to participate in a game of Human Vs Zombies
  I want to see available games on my landing page
  so that I can register for the game

  Scenario: Available Games List
    Given I am logged in as any user
    When  there is an available game to join
    Then  I should see a game in the "Available Games" section

  Scenario: Available Games List should be in chronological order
    Given I am logged in as any user
    When  there are multiple available games to join
    Then  games in the "Available Games" section should be in chronological order

  Scenario: Available Games should display their start date
    Given I am logged in as any user
    When  there is an available game to join
    Then  I should see the Available Game's start date

  Scenario: the Available Games section does not appear if there are no available games
    Given I am logged in as any user
    When  there are no available games to join
    Then  I should not see the "Available Games" section
