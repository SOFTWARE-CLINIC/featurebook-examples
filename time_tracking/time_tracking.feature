Feature: Time Tracking

  In order to keep a record of my time As an employee I can create, view, update, and delete logged tasks

  Background:
    Given I am signed in

  Scenario: Add a new task
    When I go to the home page
    And I provide all the required task information
    Then I should be able to add a new task

  Scenario: Try to add an invalid task
    When I go to the home page
    But I don't provide all the required task information
    Then I should not be able to add an invalid task

  Scenario: Update an existing task
    When I edit a task
    And I update it with all the required task information
    Then I should be able to update the task

  Scenario: Try to update an invalid task
    When I edit a task
    But I don't update it with all the required task information
    Then I should not be able to update the task

  Scenario: Delete a task
    Given I have added a task
    When I go to the home page
    Then I should be able to delete the task

  Scenario: View today's tasks
    Given I have added some tasks
    When I go to the home page
    Then I should see today's tasks by default

  Scenario: View past tasks
    Given I have added some tasks
    When I go to the home page
    Then I should be able to navigate to see past tasks

  Scenario: Navigate tasks by workweek
    Given I have added some tasks
    When I go to the home page
    Then I should be able to navigate tasks by workweek

  Scenario: Quickly view days missing logged time
    Given I have days missing 8 hours of logged time
    When I go to the home page
    And I open the calendar
    Then I should be able to see all days missing 8 hours of logged time