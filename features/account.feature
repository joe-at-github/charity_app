Feature: A visitor can register

Scenario: A visitor can register as a charity
  Given a visitor is on the welcome page
  And they click on register
  And they click on charity
  And they fill in the charity account registration form
  When they submit the form
  Then a new charity account is created
    And they are redirected to their edit charity profile page

Scenario: A visitor can register as a business
  Given a visitor is on the welcome page
  And they click on register
  And they click on business
  And they fill in the business account registration form
  When they submit the form
  Then a new business account is created
