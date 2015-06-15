Feature: Giving change

  **In order** to keep what's mine back in the pocket
  **as a** thirsty bastard
  **I want to** get change after buying a drink.

  ![Money](/assets/images/giving_change_money.jpg)

  Background:
    Given a machine

  Scenario: Navigation for giving change
    Given the machine has the following choices
    When I enter "2" euro
    Then the machine says "make your choice"
    When I choose "cola"
    Then the machine delivers a can of "cola" to the output tray
    And the machine delivers a "1" euro to the output tray
