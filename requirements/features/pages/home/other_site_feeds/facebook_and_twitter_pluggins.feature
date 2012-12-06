Feature: Facebook and Twitter Pluggins

  As any user
  I want to be able to see the latest feed from Twitter and Facebook
  so that I can be up to date with all of the Humans Vs Zombies action

  Scenario: Twitter feed should be available
    Given I am a guest
    Then  I should see the Twitter feed

  Scenario: Facebook feed should be available
    Given I am a guest
    Then  I should see the Facebook feed
