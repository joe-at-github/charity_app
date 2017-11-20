# Scenario: A charity can login
Given("there are some charities") do
  @charity = Charity.create!(name:"Oxfam", email:"oxfam@mail.com", password: "oxfampassword")
end

Given("they are on the charity login page") do
  visit(new_charity_session_path)
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
  @business = Business.create!(name:"Tesco", email:"tesco@mail.com", password: "tescopassword")
end

Given("they are on the business login page") do
  visit(new_business_session_path)
end

Given("they filled in the business login form") do
  fill_in 'Email', with: @business.email
  fill_in 'Password', with: @business.password
end