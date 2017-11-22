Feature: A member can edit his profile

Scenario: A charity can edit its charity profile
  Given there are some charities
    And they have a charity profile
    And the charity is logged in
    And they are on the edit charity profile page
  When they edit the edit charity profile form
    And they click submit
  Then the changes to the charity profile are saved

Scenario: A business can edit its business profile
  Given there are some businesses
    And they have a business profile
    And the business is logged in
    And they are on the edit business profile page
  When they edit the edit business profile form
    And they click submit
  Then the changes to the business profile are saved
