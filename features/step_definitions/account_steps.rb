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
  fill_in 'Charity name', with: 'Todos Together'
  fill_in 'Email', with: 'todos@mail.com'
  fill_in 'Password', with: 'todospassword'
end

When("they submit the form") do
  click_link 'Submit'
end

Then("a new account is created") do
  pending # Write code here that turns the phrase above into concrete actions
end