@Functional
Feature: Summary

**In order to** describe my specification **as a** writer
**I want to** be able to provide some description that is pertinent to all features and scenarios.

  Background:
    Given a directory with Gherkin source files
    And  "SUMMARY.md" descriptor

  @US_129
  Scenario: Provide specification description
    Given the "SUMMARY.md" contains the following text
    """
This is my specification description.
    """
    When I serve the directory as a system specification
    And open it in my Web browser
    Then the summary should be displayed on the home page