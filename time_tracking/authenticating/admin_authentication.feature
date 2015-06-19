Feature: Admin Authentication

  In order to administer the site
  As an admin
  I want non-admins to be prevented from administration functionality.

  Scenario: Try to Add a New Employee
    Given I am signed in as a non-admin
    Then I should not be able to access the new employee page

  Scenario: Try to Add a New Project
    Given I am signed in as a non-admin
    Then I should not be able to access the new project page
