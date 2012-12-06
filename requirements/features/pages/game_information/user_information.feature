Feature: User Information

  As a user participating in multiple games
  I need to have a unique ID for each game
  so that I do not confuse the system into thinking I am someone else

  Scenario: Users should have a unique Kill ID for each game they participate in
    Given I am logged in as any user
    When  there are multiple current games
    And   I view game information for game "1"
    Then  I should see "1234567" for "Kill ID"
    When  I view game information for game "2"
    Then  I should see "7654321" for "Kill ID"
