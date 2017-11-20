Given("a visitor is on the welcome page") do
  visit(root_path)
end

Given("they click on register") do
  expect(page).to have_link("Sign up")
end

Given("they fill in the account registration form") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("they submit the form") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("a new account is created") do
  pending # Write code here that turns the phrase above into concrete actions
end