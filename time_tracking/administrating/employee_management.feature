Feature: Employee management

  In order to allow employees to track time as an admin I can create, view, and update employees.

  Background:
    Given I am signed in as an admin

  @Implemented
  Scenario: Add a new employee
    When I go to the new employee page
    And I provide all the required employee information
    Then I should be able to add the employee

  @Implemented
  Scenario: Try to add an invalid employee
    When I go to the new employee page
    But I don't provide all the required employee information
    Then I should not be able to add the employee

  @NotImplemented
  Scenario: Update an existing employee
    When I edit an employee
    And I provide all the required employee information
    Then I should be able to update the employee

  Scenario: Try to update an invalid employee
    When I edit an employee
    But I don't provide all the required employee information
    Then I should not be able to update the employee

  Scenario: View an existing employees
    Given I have added some employees
    When I go to the employees page
    Then I should see every employee

