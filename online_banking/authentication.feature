Feature: Authentication

  Background:
    Given I have a bank account with online access

  Scenario: First-time authentication
    When I go to the sign in page
    And I enter the customer number
    And I enter the 4-digits PIN
    And I click the `Sign in` button
    Then I should be signed in
    And the system should prompt me to set the password

  Scenario: Authentication
    Given I set the password for authentication
    When I go to the sign in page
    And I enter the customer number
    And I enter the password
    And I click the `Sign in` button
    Then I should be signed in
    And the system should redirect me to the home page

  Scenario: Lock Account
    Given I set the password for authentication
    When I go to the sign in page
    And I enter the customer number
    And I enter an invalid password 3 times
    Then the system should lock my account

