# Scenario: A bussiness create a package and add a food product
Given("they are on the product index") do
  visit products_path
  expect(page).to have_content('Chocolate bar')
  expect(page).to have_content('Sleeping bag')
end

Given("they click on food product category") do
  click_link 'Food'
end

Given("they click on a food product") do
  expect(page).to_not have_content('Sleeping bag')
  click_link 'Chocolate bar'
end

When("they fill in the food product form") do
  fill_in 'Expiration date', with: '2018-11-01'
  fill_in 'Quantity', with: 100
end

When("click add to package") do
  page.find_button('Add to package').click
end

Then("a package is created") do
  expect(Package.count).to eq(1)
end

Then("the product has been added") do
  expect(Package.last.package_items.count).to eq(1)
end

# Scenario: A bussiness can review and finalize the package 
Given("the business is on the products page") do
  visit products_path
end

Given("a there is a current package") do
  click_link 'Chocolate bar'
  fill_in 'Expiration date', with: '2018-11-01'
  fill_in 'Quantity', with: 100
  page.find_button('Add to package').click 
end

Given("click Review and finalize") do
  click_link 'Review and finalize'
end

Given("edit the review package form") do
  expect(page).to have_field('Quantity', with: '100')
  expect(page).to have_content('On hold')
end

When("they submit modification to the package") do
  fill_in 'Expiration date', with: '2019-02-01'
  fill_in 'Quantity', with: 500
  fill_in 'Available from', with: "2018-01-10"
  fill_in 'Available until', with: "2018-01-20"
  click_button 'Update'
end

When("click finalize") do
  click_link 'Finalize'
end

Then("the package is updated") do
  expect(Package.last.package_items.first.quantity).to eq(500)
end

Then("they are redicted to their business profile page") do
  expect(page).to have_content(@business.profile.name)
  expect(page).to have_content('Chocolate bar')
end