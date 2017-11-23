# Scenario: A business uploads an image to its profile
Given("they upload an image") do
  attach_file("Profile image",  "features/fixtures/supplier_logo.png")
end

Then("the business profile has an image attached to it") do
  expect(BusinessProfile.last.image_identifier).to eq("supplier_logo.png")
  @business = BusinessProfile.last
  @business.remove_image!
  @business.save
end

# Scenario: A charity uploads an image to its profile
Then("the charity profile has an image attached to it") do
  expect(CharityProfile.last.image_identifier).to eq("supplier_logo.png")
  @charity = CharityProfile.last
  @charity.remove_image!
  @charity.save
end