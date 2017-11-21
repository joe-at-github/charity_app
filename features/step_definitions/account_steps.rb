# Scenario: A visitor can register as a charity
Given("a visitor is on the welcome page") do
  visit(root_path)
end

Given("they click on register") do
  expect(page).to have_link("Sign up")
  click_link 'Sign up'
end

Given("they click on charity") do
  expect(page).to have_link("charity")
  click_link 'charity'
end

Given("they fill in the charity account registration form") do
  fill_in 'Charity name', with: 'Oxfam'
  fill_in 'Email', with: 'oxfam@mail.com'
  fill_in 'Password', with: 'oxfampassword'
  fill_in 'Password confirmation', with: 'oxfampassword'
end

When("they submit the form") do
  page.find_button('Sign up').click
end

Then("a new charity account is created") do
  expect(Charity.count).to eq(1)
end

Then("they are redirected to their edit charity profile page") do
  # save_and_open_page
  expect(page).to have_content('Oxfam')
  expect(page).to have_content('Please take some time to complete your profile')
  #  flash notice
  #  profile edit page
end

# Scenario: A visitor can register as a business
Given("they click on business") do
  expect(page).to have_link("business")
  click_link 'business'
end

Given("they fill in the business account registration form") do
  fill_in 'Company name', with: 'Tesco'
  fill_in 'Email', with: 'tesco@mail.com'
  fill_in 'Password', with: 'tescopassword'
  fill_in 'Password confirmation', with: 'tescopassword'
end

Then("a new business account is created") do
  expect(Business.count).to eq(1)
end