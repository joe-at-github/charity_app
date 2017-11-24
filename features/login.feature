Feature: A member can login

Scenario: A charity can login
  Given there are some charities
    And they are on the login page
    And they filled in the charity login form
  When they submit the login form
  Then they are logged in

Scenario: A business can login
  Given there are some businesses
    And they are on the login page
    And they filled in the business login form
  When they submit the login form
  Then they are logged in