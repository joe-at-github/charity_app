# Scenario: A charity can login
Given("there are some charities") do
  @charity = User.create!(email:"oxfam@mail.com", password: "oxfampassword", role: 0)
end

Given("they are on the login page") do
  visit(new_user_session_path)
end

Given("they filled in the charity login form") do
  fill_in 'Email', with: @charity.email
  fill_in 'Password', with: @charity.password
end

When("they submit the login form") do
  page.find_button('Log in').click
end

Then("they are logged in") do
  expect(page).to have_content('Signed in successfully')
end

# Scenario: A business can login
Given("there are some businesses") do
  @business = User.create!(email:"tesco@mail.com", password: "tescopassword", role: 1)
end

Given("they filled in the business login form") do
  fill_in 'Email', with: @business.email
  fill_in 'Password', with: @business.password
end