Feature: A member creates a profile

Scenario: A charity creates a charity profile
  Given a member registered as a charity
    And they are on the new charity profile page
    And they fill in the new charity profile form
  When they submit the new profile form
  Then a new profile is created
    And it the type is charity

Scenario: A business creates a business profile
  Given a member registered as a business
    And they are on the new business profile page
    And they fill in the new business profile form
  When they submit the new profile form
  Then a new profile is created
    And it the type is business