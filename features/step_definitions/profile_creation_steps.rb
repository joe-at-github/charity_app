Given("a member registered as a charity") do
  visit new_user_registration_path
  choose 'user_role_0'
  fill_in 'Email', with: 'oxfam@mail.com'
  fill_in 'Password', with: 'oxfampassword'
  fill_in 'Password confirmation', with: 'oxfampassword'
  page.find_button('Sign up').click
end

Given("they are on the new charity profile page") do
  expect(page).to have_content('New profile')
end

Given("they fill in the new charity profile form") do
  fill_in 'Organization name', with: 'Oxfam'
  fill_in 'Description', with: 'Oxfam Walthamstow'
  fill_in 'Street', with: '2-4 High St'
  fill_in 'Postcode', with: 'E17 7LD'
  fill_in 'Main contact (first name)', with: 'John'
  fill_in 'Main contact (last name)', with: 'Smith'
  attach_file("Profile image",  "features/fixtures/supplier_logo.png")
  save_and_open_page
end

When("they submit the new profile form") do
  page.find_button('submit').click
end

Then("a new profile is created") do
  expect(Profile.count).to eq(1)
  # expect(Profile.last.type).to eq('charity')
  @profile = Profile.last
  @profile.remove_image!
  @profile.save
end

# Scenario: A business creates a business profile
Given("a member registered as a business") do
  visit new_user_registration_path
  choose 'user_role_1'
  fill_in 'Email', with: 'tesco@mail.com'
  fill_in 'Password', with: 'tescopassword'
  fill_in 'Password confirmation', with: 'tescopassword'
  page.find_button('Sign up').click
end

Given("they are on the new business profile page") do
  expect(page).to have_content('New profile')
end

Given("they fill in the new business profile form") do
  fill_in 'Organization name', with: 'Tesco'
  fill_in 'Description', with: 'Tesco Liverpool St'
  fill_in 'Street', with: '56 Liverpool St,'
  fill_in 'Postcode', with: 'E23 2PL'
  fill_in 'Main contact (first name)', with: 'Robert'
  fill_in 'Main contact (last name)', with: 'Decker'
  attach_file("Profile image",  "features/fixtures/supplier_logo.png")
end

When("they submit the new business profile form") do
  page.find_button('submit').click
end