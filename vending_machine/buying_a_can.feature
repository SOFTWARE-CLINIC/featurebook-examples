Feature: Buying a can

  **In order to** quench my thirst

  **As a** thirsty bastard

  **I want to** get a drink from the vending machine

  Background:
    Given a machine

  Scenario: Navigation for delivering can
    Given the machine has the following choices
    When I am in front of the machine
    Then the machine says "have a drink"
    When I choose "cola"
    Then the machine says "please enter money first"
    When I enter "1" euro
    Then the machine says "make your choice"
    When I choose "cola"
    Then the machine delivers a can of "cola" to the output tray

  Scenario: Get a drink for free
    Given the machine has the following choices
    When I choose "cola"
    Then the machine delivers a can of "cola" to the output tray

  Scenario: Illegal choice
    Given the machine has the following choices
    When I choose "beer"
    Then the machine delivers nothing

  Scenario Outline: Getting drinks for free

    Given the machine has the following choices
    When I choose <choice>
    Then the output tray is <empty>
    And the machine delivers a can of <brand> to the output tray

  Examples:
    | choice | empty     | brand  |
    | cola   | not empty | cola   |
    | sprite | not empty | sprite |

  Scenario: Delivers nothing when not paid
    Given the machine has the following choices
    When I choose "cola"
    Then the machine delivers nothing

  Scenario: Delivers a can when paid exactly
    Given the machine has the following choices
    When I enter "1" euro
    And I choose "sprite"
    Then the machine delivers a can of "sprite" to the output tray

  Scenario: Delivers a can when paid too much
    Given the machine has the following choices
    When I enter "2" euro
    And I choose "sprite"
    Then the machine delivers a can of "sprite" to the output tray
