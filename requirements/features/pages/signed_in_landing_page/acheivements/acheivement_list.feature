Feature: Acheivement List

  As any user that has gained an acheivement
  I want recent acheivements to display in the Acheivements section
  so that I can bask in my glory

  Scenario: Recent Acheivements are listed in the Acheivement section
    Given I am logged in as any user
    When  I acquire the following acheivements
      | Acheivement                 |
      | Fought at Marcon            |
    Then  I should see the following acheivements in the Acheivement section
      | Acheivement                 |
      | Fought at Marcon            |

  Scenario: Only the most recent 5 acheivements display in the Acheivement section
    Given I am logged in as any user
    When  I acquire the following acheivements
      | Acheivement                             |
      | Joined the Apocalypse!                  |
      | Fought at Marcon                        |
      | Tagged 5 Humans in one day              |
      | Fought at Midoricon                     |
      | Donated to Continue the War on Zombies! |
      | Survived at Marcon                      |
    Then  I should see the following acheivements in the Acheivement section
      | Acheivement                             |
      | Joined the Apocalypse!                  |
      | Fought at Marcon                        |
      | Tagged 5 Humans in one day              |
      | Fought at Midoricon                     |
      | Donated to Continue the War on Zombies! |
