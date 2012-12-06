Feature: Common Pages

  As any user
  I should be able to see the following pages:
  About, Rules, More Nav, Games/Events

  Scenario: Common pages accessable to all registered users
    Given I am logged in as any user
    Then  I should be able to navigate to any of the following pages
      | Page         |
      | About        |
      | Rules        |
      | Your Games   |
      | Games/Events |
      | Donate       |
