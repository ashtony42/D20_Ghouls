Feature: Opt to Donate

    As a guest user signing up for a new account
    I should be asked if I want to donate
    so that I can support the Humans Vs Zombies game

  Scenario: Guest users will be asked if they would like to make a donation
    Given I am a guest user
    When  I go to the "Sign Up" page
    Then  I should see "Would you like to make a donation to ensure that the Zombie apocalypse doesn't come to a horrible end?"
    And   I should see the "Click to Donate" button



