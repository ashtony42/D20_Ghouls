Feature: Upcoming Games

  As any user registered for a game of Human Vs Zombies that will happen in the future
  I want to see my upcoming games on my landing page
  so that I can view the game information

  Scenario: Upcoming Games List
    Given I am logged in as any user
    When  I am registered for a game for a future date
    Then  I should see a game in the "Upcoming Games" section

  Scenario: Upcoming Games List should be in chronological order
    Given I am logged in as any user
    When  I am registered for multiple games for a future date
    Then  games in the "Upcoming Games" section should be in chronological order

  Scenario: Upcoming Games should display their start date
    Given I am logged in as any user
    When  I am registered for a game for a future date
    Then  I should see the Upcoming Game's start date

  Scenario: the Upcoming Games section does not appear if there are no Upcoming Games
    Given I am logged in as any user
    When  there are no upcoming games to join
    Then  I should not see the "Upcoming Games" section
