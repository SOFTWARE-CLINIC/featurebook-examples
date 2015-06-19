Feature: Employee Authentication

  In order to log time
  As a Carbon Five employee
  I can sign in via my Carbon Five Google Apps account.

  Scenario: Sign Up
    Given I have a Google Apps account
    When I sign in
    Then I should automatically have a Timesheet account

  Scenario: Sign In
    Given I have a Timesheet account
    Then I should be able to sign in

  Scenario: Sign In After Updating Your Google Apps Account Information
    Given I have a Timesheet account
    When I sign in after updating my Google Apps account information
    Then I should have the same updated information in my Timesheet account

  Scenario: Sign Out
    Given I am signed in
    Then I should be able to sign out

  Scenario: When Not Signed in, Try to Use the Site
    Given I am not signed in
    When I try to use the site
    Then I should be required to sign in
