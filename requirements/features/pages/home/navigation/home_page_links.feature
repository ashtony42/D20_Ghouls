Feature: Home Page Links

  As a guest
  I want to have some available navigation links
  so that I can learn about Humans Vs Zombies

  Scenario: Available Home Page links for guest users
    Given I am a guest
    Then  I should be able to navigate to any of the following pages
      | Page            |
      | About           |
      | Rules           |
      | Sign Up         |
      | Click to Donate |
