Feature: A visitor can register

Scenario: A visitor can register as a charity
  Given a visitor is on the welcome page
  And they click on register
  And they click on charity
  And they fill in the account registration form
  When they submit the form
  Then a new account is created
