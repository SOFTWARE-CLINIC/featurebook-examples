Feature: Project management

  In order to allow employees to enter time for a project as an admin I can create, view, and update projects.

  Background:
    Given I am signed in as an admin

  Scenario: Add a new project for an existing client
    When I go to the new project page
    And I provide all the required project information for an existing client
    Then I should be able to add a new project for the existing client

  Scenario: Add a new project for a new client
    When I go to the new project page
    And I provide all the required project information for a new client
    Then I should be able to add the project

  Scenario: Try to add an invalid project
    When I go to the new project page
    But I don't provide all the required project information
    Then I should not be able to add the project

  Scenario: Update an existing project
    When I edit a project
    And I provide all the required project information
    Then I should be able to update the project

  Scenario: Try to update an invalid project
    When I edit a project
    But I don't provide all the required project information
    Then I should not be able to update the project

  Scenario: View existing projects
    Given I have added some projects
    When I go to the projects page
    Then I should see every project
