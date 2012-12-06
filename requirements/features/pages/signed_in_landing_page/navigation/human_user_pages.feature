Feature: Human User Pages

  As a Human User
  I want to view human specific pages
  so that I can fulfill my role as a human

  Scenario Outline: Only humans and moderators have access to the Human forums
    Given I am logged in as a "<User Type>"
    When  I view game information
    And   I go to the "Game Forum" page
    Then  I should see a link to the "Human Forum"
  Examples:
    | User Type       |
    | Human           |
    | Original Zombie |
    | Moderator       |

