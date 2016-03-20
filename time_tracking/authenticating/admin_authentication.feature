Feature: Admin authentication

  In order to administer the site as an admin I want non-admins to be prevented from administration functionality.

  Scenario: Try to add a new employee
    Given I am signed in as a non-admin
    Then I should not be able to access the new employee page

  Scenario: Try to add a new project
    Given I am signed in as a non-admin
    Then I should not be able to access the new project page
