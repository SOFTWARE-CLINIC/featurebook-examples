Feature: Employee Management

  In order to allow employees to track time
  As an admin
  I can create, view, and update employees

  Background: fccc
    Given I am signed in as an admin

  Scenario: 1. Add a New Employee
    When I go to the new employee page
    And I provide all the required employee information
    Then I should be able to add an employee

  Scenario: 2. Try to Add an Invalid Employee
    When I go to the new employee page
    But I don't provide all the required employee information
    Then I should not be able to add an employee

  Scenario: 3. Update an Existing Employee
    When I edit an employee
    And I provide all the required employee information
    Then I should be able to update the employee

  Scenario: 4. Try to Update an Invalid Employee
    When I edit an employee
    But I don't provide all the required employee information
    Then I should not be able to update the employee

  Scenario: 5. View Existing Employees
    And I have added some employees
    When I go to the employees page
    Then I should see every employee