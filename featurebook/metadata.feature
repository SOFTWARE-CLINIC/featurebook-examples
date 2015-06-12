Feature: Metadata

  *In order to* describe my specification

  *As a* writer

  *I want to* be able to provide some metadata about my work

  Background:
    Given a directory with Gherking source files
    And  "featurebook.json" descriptor

  Scenario: Specification's title defaults to the titleized directory name

  Scenario: Provide specification's title

  Scenario: Provide information about authors and contributors
    Given the "author" property in "featurebook.json" contains the following authors
      | firstName | lastName    | email                  |
      | Henryk    | Sienkiewicz | hsienkiewicz@gmail.com |
      | Eliza     | Orzeszkowa  | eorzeszkowa@gmail.com  |
    And the "contributors" property in "featurebook.json" contains the following contributors
      | firstName | lastName | email               |
      | Juliusz   | Slowacki | jslowacki@gmail.com |
    When I server the directory as a system specification
    And open it in my Web browser
    Then the authors should be listed beneath the specification's title
    And the contributors should be listed beneath the authors
