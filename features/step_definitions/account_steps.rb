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

Given("they fill in the account registration form") do
  fill_in 'Charity name', with: 'Oxfam'
  fill_in 'Email', with: 'oxfam@mail.com'
  fill_in 'Password', with: 'oxfampassword'
  fill_in 'Password confirmation', with: 'oxfampassword'
end

When("they submit the form") do
  page.find_button('Sign up').click
end

Then("a new account is created") do
  expect(Charity.count).to eq(1)
end