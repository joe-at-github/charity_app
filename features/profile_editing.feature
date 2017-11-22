Feature: A member can edit his profile

Scenario: A charity can edit its charity profile
  Given there are some charities
    And they have a profile
    And the charity is logged in
    And they are on the edit charity profile page
  When they edit the edit charity profile form
    And they click submit
  Then the changes to the charity profile are saved
