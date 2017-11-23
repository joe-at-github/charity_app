# Scenario: A visitor can register as a charity
Given("a visitor is on the welcome page") do
  visit(root_path)
end

Given("they click on register") do
  expect(page).to have_link("Sign up")
  click_link 'Sign up'
end

Given("they fill in the charity account registration form") do
  choose 'user_role_0'
  fill_in 'Email', with: 'oxfam@mail.com'
  fill_in 'Password', with: 'oxfampassword'
  fill_in 'Password confirmation', with: 'oxfampassword'
end

When("they submit the form") do
  page.find_button('Sign up').click
end

Then("a new charity account is created") do
  expect(User.count).to eq(1)
end

Then("they are redirected to their new charity profile page") do
  expect(page).to have_content('Please take some time to complete your profile')
  expect(page).to have_content('Description')
  expect(page).to have_content('Street')
  expect(page).to have_content('Postcode')
  expect(page).to have_content('Main contact (first name)')
  expect(page).to have_content('Main contact (last name)')
end

# Scenario: A visitor can register as a business
Given("they fill in the business account registration form") do
  choose 'user_role_1'
  fill_in 'Email', with: 'tesco@mail.com'
  fill_in 'Password', with: 'tescopassword'
  fill_in 'Password confirmation', with: 'tescopassword'
end

Then("a new business account is created") do
  expect(User.count).to eq(1)
end

Then("they are redirected to their new business profile page") do
  expect(page).to have_content('Please take some time to complete your profile')
  expect(page).to have_content('Description')
  expect(page).to have_content('Street')
  expect(page).to have_content('Postcode')
  expect(page).to have_content('Main contact (first name)')
  expect(page).to have_content('Main contact (last name)')
end