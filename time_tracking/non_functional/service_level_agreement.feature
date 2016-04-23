Feature: Service level agreement

  Keeping our customers happy is really important. This is why we cater for
  the highest availabilty.

  ![Analytics](asset://assets/images/analytics.png)

  Scenario: New account creation
    Given there are "100000" users registered on the system
    When I create a new account
    Then I should be taken to my dashboard within "5" ms

  Scenario: Homepage page access
    Given "1000" users are hitting the homepage simultaneously
    Then each user should get a response within "2" ms
