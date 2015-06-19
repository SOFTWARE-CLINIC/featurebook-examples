Feature: Reporting

  In order to bill clients
  As an admin
  I can generate client, project, and employee based reports of logged time

  Background:
    Given: I am signed in as an admin

  Scenario: 1. Generate a Report of All Time Logged on a Project
    And a project with logged time
    When I go to the reports page
    Then I can generate a report of all its logged time

  Scenario: 2. Generate a Report of All Time Logged Over a Time Period of a Project
    And a project with time logged over the past 2 weeks
    When I go to the reports page
    Then I can generate a report of all its logged time over a time period

  Scenario: 3. Generate a Report of All Time Logged for a Client
    And a client with time logged on its projects
    When I go to the reports page
    Then I can generate a report of time logged across all its projects

  Scenario: 4. Generate a Report of All Time Logged by an Employee
    And an employee with logged time
    When I go to the reports page
    Then I can generate a report of all their logged time

  Scenario: 5. Export a Report as a CSV File
    When I go to the reports page
    And I generate a report
    Then I should be able to export it as a CSV file