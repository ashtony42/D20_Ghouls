Feature: Player Stats

  As any user
  I want to be able to view my stats
  so that I can see how well I am doing

  Scenario: Picture, Name, Kill ID, and other stats display in the Stats section
    Given I am logged in as any user
    When  I have uploaded a picture
    And   I have played in at least one game
    Then  I should see the following in the Stats Section
      | Stats Section   |
      | Picture         |
      | Name            |
      | Stats           |
