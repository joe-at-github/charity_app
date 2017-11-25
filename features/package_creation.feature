Feature: A business can create a package

Background: 
  Given there are some businesses
    And they are logged in

Scenario: A bussiness create a package and add a food product
  Given they are on the product index
    And they click on food product category
    And they click on a food product
  When they fill in the food product form
    And click add to package
  Then a package is created
    And the product has been added