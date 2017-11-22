Feature: A member uploads an image to its profile

Background: 
  Given there are some businesses
    And they have a business profile
    And the business is logged in
    And they are on the edit business profile page

Scenario: A business uploads an image to its profile
  Given  they upload an image
  When  they click submit
  Then the business profile has an image attached to it