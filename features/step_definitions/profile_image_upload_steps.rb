Given("they upload an image") do
  save_and_open_page
  attach_file("Profile image",  "features/fixtures/supplier_logo.png")
end

Then("the business profile has an image attached to it") do
  expect(BusinessProfile.last.image_identifier).to eq("supplier_logo.png")
end

