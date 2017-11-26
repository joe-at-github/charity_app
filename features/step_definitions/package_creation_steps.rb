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
  click_link 'Chocolate bar'
  save_and_open_page
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