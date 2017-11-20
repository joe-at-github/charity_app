Feature: A member can login

Scenario: A charity can login
  Given there are some charities
    And they are on the charity login page
    And they filled in the charity login form
  When they submit the login form
  Then they are logged in
