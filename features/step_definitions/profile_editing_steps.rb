Given("they have a charity profile") do
  @charity.create_profile(
    description: 'Oxfam Walthamstow', 
    street: '2-4 High St', 
    postcode:  'E17 7LD',
    type: "CharityProfile",
    name: "Oxfam"
    )
end

Given("the charity is logged in") do
  # page.set_rack_session(charity_id: @charity.id)
  # can't access current_charity if mocking login
  visit new_user_session_path
  fill_in 'Email', with: @charity.email
  fill_in 'Password', with: @charity.password
  page.find_button('Log in').click
end

Given("they are on the edit charity profile page") do
  visit edit_profile_path(@charity.profile.id)
  expect(page).to have_content('Edit your profile')
end

When("they edit the edit charity profile form") do
  fill_in 'Main contact (first name)', with: 'Ben'
  fill_in 'Main contact (last name)', with: 'Hornsby'
  attach_file("Profile image",  "features/fixtures/supplier_logo.png")
end

When("they click submit") do
  page.find_button('submit').click
end

Then("the changes to the charity profile are saved") do
  expect(CharityProfile.last.contact_first_name).to eq('Ben')
  expect(CharityProfile.last.contact_last_name).to eq('Hornsby')
end

# Scenario: A business can edit its business profile
Given("they have a business profile") do
  @business.create_profile(
    description: 'Tesco Walthamstow', 
    street: '24 Liverpool St', 
    postcode:  'S17 7HD',
    type: "BusinessProfile",
    name: "Tesco"
    )
end

Given("the business is logged in") do
  visit new_user_session_path
  fill_in 'Email', with: @business.email
  fill_in 'Password', with: @business.password
  page.find_button('Log in').click
end

Given("they are on the edit business profile page") do
  visit edit_profile_path(@business.profile.id)
  expect(page).to have_content('Edit your profile')
end

When("they edit the edit business profile form") do
  fill_in 'Main contact (first name)', with: 'Scottie'
  fill_in 'Main contact (last name)', with: 'Wenborne'
  attach_file("Profile image",  "features/fixtures/supplier_logo.png")
end

Then("the changes to the business profile are saved") do
  expect(BusinessProfile.last.contact_first_name).to eq('Scottie')
  expect(BusinessProfile.last.contact_last_name).to eq('Wenborne')
end 