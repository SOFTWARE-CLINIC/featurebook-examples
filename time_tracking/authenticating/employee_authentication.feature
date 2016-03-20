Feature: Employee authentication

  In order to log time as an employee I can sign in to Time Tracking via my Google account.

  Scenario: Sign up
    Given I have a Google account
    When I sign in
    Then I should automatically have a Time Tracking account

  Scenario: Sign in
    Given I have a Time Tracking account
    Then I should be able to sign in

  Scenario: Sign in after updating Google account information
    Given I have a Time Tracking account
    When I update my Google account information
    And I sign in
    Then I should have the same updated information in my Time Tracking account

  Scenario: Sign out
    Given I am signed in
    Then I should be able to sign out

  Scenario: Try to use the site as unauthorized user
    Given I am not signed in
    When I try to use the site
    Then I should be required to sign in

