Given("they are on the product index") do
  visit products_path
end

Given("they click on food product category") do
  click_link 'Food'
end

Given("they click on a food product") do
  click_link 'chocolate bar'
end

When("they fill in the food product form") do
  fill_in 'Expiriation date', with: '2018-11-01'
  fill_in 'Quantity', with: 100
end

When("click add to package") do
  page.find_button('Add to package').click
end

Then("a package is created") do
  expect(Package.count).to eq(1)
end

Then("the product has been added") do
  expect(Package.last.package_item.count).to eq(1)
end