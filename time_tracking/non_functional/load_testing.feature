Feature: Load testing

  Scenario: New account SLA
    Given there are "100000" users registered on the system
    When I create a new account
    Then I should be taken to my dashboard within "5" ms

  Scenario: Access homepage SLA
    Given "1000" users are hitting the homepage simultaneously
    Then each user should get a response within "2" ms
