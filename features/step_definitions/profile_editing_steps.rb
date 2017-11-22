Given("they have a profile") do
  @charity.create_charity_profile(
    description: 'Oxfam Walthamstow', 
    street: '2-4 High St', 
    postcode:  'E17 7LD'
    )
end

Given("the charity is logged in") do
  # page.set_rack_session(charity_id: @charity.id)
  # can't access current_charity if mocking login
  visit new_charity_session_path
  fill_in 'Email', with: @charity.email
  fill_in 'Password', with: @charity.password
  page.find_button('Log in').click
end

Given("they are on the edit charity profile page") do
  visit edit_charity_profile_path(@charity)
  expect(page).to have_content('Edit your profile')
  expect(page).to have_content(@charity.name)
end

When("they edit the edit charity profile form") do
  fill_in 'Main contact (first name)', with: 'Ben'
  fill_in 'Main contact (last name)', with: 'Hornsby'
end

When("they click submit") do
  page.find_button('submit').click
end

Then("the changes to the charity profile are saved") do
  expect(CharityProfile.last.contact_first_name).to eq('Ben')
  expect(CharityProfile.last.contact_last_name).to eq('Hornsby')
end