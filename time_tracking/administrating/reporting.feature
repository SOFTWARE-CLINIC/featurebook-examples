Feature: Reporting

  In order to bill clients as an admin I can generate client, project, and employee based reports of logged time.

  Background:
    Given I am signed in as an admin

  Scenario: Generate a report of all time logged on a project
    Given a project with logged time
    When I go to the reports page
    Then I can generate a report of all its logged time

  Scenario: Generate a report of all time logged over a time period of a project
    Given a project with time logged over the past 2 weeks
    When I go to the reports page
    Then I can generate a report of all its logged time over a time period

  Scenario: Generate a report of all time logged for a client
    Given a client with time logged on its projects
    When I go to the reports page
    Then I can generate a report of time logged across all its projects

  Scenario: Generate a report of all time logged by an employee
    Given an employee with logged time
    When I go to the reports page
    Then I can generate a report of all their logged time

  Scenario: Export a report as a CSV file
    When I go to the reports page
    And I generate a report
    Then I should be able to export it as a CSV file
