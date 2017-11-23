Feature: A member uploads an image to its profile

Scenario: A business uploads an image to its profile
  Given there are some businesses
    And they have a business profile
    And the business is logged in
    And they are on the edit business profile page
    And  they upload an image
  When  they click submit
  Then the business profile has an image attached to it

Scenario: A charity uploads an image to its profile
  Given there are some charities
    And they have a charity profile
    And the charity is logged in
    And they are on the edit charity profile page
    And  they upload an image
  When  they click submit
  Then the charity profile has an image attached to it