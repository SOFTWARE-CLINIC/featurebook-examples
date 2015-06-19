Feature: Project Management

  In order to allow employees to enter time for a project
  As an admin
  I can create, view, and update projects.

  Background: Signed in as an admin
    Given I am signed in as an admin

  Scenario: Add a New Project for an Existing Client
    When I go to the new project page
    And I provide all the required project information for an existing client
    Then I should be able to add a new project for the existing client

  Scenario: Add a New Project for a New Client
    When I go to the new project page
    And I provide all the required project information for a new client
    Then I should be able to add a new project for the new client

  Scenario: Try to Add an Invalid Project
    When I go to the new project page
    But I don't provide all the required project information
    Then I should not be able to add the invalid project

  Scenario: Update an Existing Project
    When I edit a project
    And I provide all the required project information
    Then I should be able to update the project

  Scenario: Try to Update an Invalid Project
    When I edit a project
    But I don't provide all the required project information
    Then I should not be able to update the project

  Scenario: View Existing Projects
    And I have added some projects
    When I go to the projects page
    Then I should see every project
