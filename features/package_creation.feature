Feature: A business can create a package

  Background: 
    Given there are some businesses
      And they have a business profile
      And the business is logged in

  @javascript
  Scenario: A bussiness create a package and add a food product
    Given they are on the product index
      And they click on food product category
      And they click on a food product
    When they fill in the food product form
      And click add to package
    Then a package is created
      And the product has been added

  @javascript
  Scenario: A bussiness can review and finalize the package 
    Given the business is on the products page
      And a there is a current package
      And click Review and finalize
      And edit the review package form
    When they submit modification to the package
    Then the package is updated
      And they are redicted to their packages index page