Feature: Eating cucumbers

  Read also the [hello world](feature://hello_world.feature) feature.

  Scenario Outline: Eat
    Given there are <start> cucumbers
    When I eat <eat> cucumbers
    Then I should have <left> cucumbers

  Examples:
    | start | eat | left |
    |  12   |  5  |  7   |
    |  20   |  5  |  15  |
