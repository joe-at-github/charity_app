# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
User.create! id: 1, email: "business1@mail.com", role: 1, password: "b1password"
User.create! id: 2, email: "business2@mail.com", role: 1, password: "b2password"
User.create! id: 3, email: "business3@mail.com", role: 1, password: "b3password"
User.create! id: 4, email: "business4@mail.com", role: 1, password: "b4password"
User.create! id: 5, email: "business5@mail.com", role: 1, password: "b5password"
User.create! id: 6, email: "business6@mail.com", role: 1, password: "b6password"
User.create! id: 7, email: "business7@mail.com", role: 1, password: "b7password"
User.create! id: 8, email: "business8@mail.com", role: 1, password: "b8password"
User.create! id: 9, email: "business9@mail.com", role: 1, password: "b9password"
User.create! id: 10, email: "business10@mail.com", role: 1, password: "b10password"
User.create! id: 11, email: "charity@mail.com", role: 0, password: "charitypassword"

Profile.delete_all
Profile.create! id: 1, user_id: 1, description: "We believe in sharing.", street: "640 High Rd", postcode: "E11 3AA", contact_first_name: "John", contact_last_name: "Stewart", name: "The Good Company", type: "BusinessProfile", latitude: 51.5679329, longitude: 0.0110347, phone_number: "07849 123 060"
Profile.create! id: 2, user_id: 2, description: "We believe in sharing too.", street: "High Road,", postcode: "E11 4RE", contact_first_name: "Trevor", contact_last_name: "Noah", name: "The Even Nicer Company", type: "BusinessProfile", latitude: 51.5639009, longitude: 0.0096186, phone_number: "07849 123 061"
Profile.create! id: 3, user_id: 3, description: "We believe in sharing too.", street: "118B Hainault Road", postcode: "E11 1EL", contact_first_name: "Robert", contact_last_name: "Duval", name: "The Genuine Company", type: "BusinessProfile", latitude: 51.583144, longitude: 0.020697829, phone_number: "07849 123 062"
Profile.create! id: 4, user_id: 4, description: "We believe in sharing too.", street: "73 Hollybush Hill", postcode: "E11 1PE", contact_first_name: "Franck", contact_last_name: "Griffin", name: "Supertore Ltd", type: "BusinessProfile", latitude: 51.576367, longitude: 0.045394047, phone_number: "07849 123 063"
Profile.create! id: 5, user_id: 5, description: "We believe in sharing too.", street: "Eastern Ave", postcode: "IG4 5DQ", contact_first_name: "Jeff", contact_last_name: "Bridges", name: "Business ltd", type: "BusinessProfile", latitude: 51.571469, longitude: 0.034870575, phone_number: "07849 123 064"
Profile.create! id: 6, user_id: 6, description: "We believe in sharing too.", street: "Overton Dr", postcode: "E11 2LW", contact_first_name: "Loic", contact_last_name: "Lemeur", name: "Food Supplies inc.", type: "BusinessProfile", latitude: 51.578306, longitude: 0.0028606243, phone_number: "07849 123 065"
Profile.create! id: 7, user_id: 7, description: "We believe in sharing too.", street: "Whipps Cross Rd", postcode: "E11 1NR", contact_first_name: "Benjamin", contact_last_name: "Hornsby", name: "Fair Trade Business", type: "BusinessProfile", latitude: 51.571246, longitude: -0.0082293829, phone_number: "07849 123 066"
Profile.create! id: 8, user_id: 8, description: "We believe in sharing too.", street: "676-682 High Rd Leyton", postcode: "E10 6JP", contact_first_name: "Francesco", contact_last_name: "Mariani", name: "Buy Smart", type: "BusinessProfile", latitude: 51.591741, longitude: 0.064073464, phone_number: "07849 123 067"
Profile.create! id: 9, user_id: 9, description: "We believe in sharing too.", street: "237 Clayhall Ave", postcode: "IG5 0NY", contact_first_name: "Jose", contact_last_name: "Canalejo", name: "SellFood inc.", type: "BusinessProfile", latitude: 51.564572, longitude: 0.055989143, phone_number: "07849 123 068"
Profile.create! id: 10, user_id: 10, description: "We believe in sharing too.", street: "291 Wanstead Park Rd", postcode: "IG1 3TR", contact_first_name: "Joe", contact_last_name: "Blog", name: "Food and Supplies ltd", type: "BusinessProfile", latitude: 51.574984, longitude: 0.028706394, phone_number: "07849 123 069"
Profile.create! id: 11, user_id: 11, description: "We like people who share.", street: "The Green", postcode: "E11 2NT", contact_first_name: "Stephen", contact_last_name: "Colbert", name: "A Great Charity", type: "CharityProfile", latitude: 51.574984, longitude:0.028706, phone_number: "07849 123 070"

PackageItem.delete_all
Package.delete_all

PackageStatus.delete_all
PackageStatus.create! id: 1, name: "Available"
PackageStatus.create! id: 2, name: "In approval"
PackageStatus.create! id: 3, name: "Assigned"
PackageStatus.create! id: 4, name: "Cancelled"
PackageStatus.create! id: 5, name: "Collected"
PackageStatus.create! id: 6, name: "On hold"

Product.delete_all
Product.create! id: 1, name: "Banana", category: "Food", image: "Banana.jpg" 
Product.create! id: 2, name: "Apple", category: "Food", image: "Apple.jpg"
Product.create! id: 4, name: "Teabag", category: "Food", image: "Teabag.jpg"
Product.create! id: 5, name: "Instant coffee sachet", category: "Food", image: "Instant coffee sachet.jpg"
Product.create! id: 6, name: "Hot chocolate sachet", category: "Food", image: "Hot chocolate sachet.jpg"
Product.create! id: 7, name: "Sugar", category: "Food", image: "Sugar.jpg"
Product.create! id: 8, name: "Biscuit", category: "Food", image: "Biscuit.jpg" 
Product.create! id: 10, name: "Chocolate bar", category: "Food", image: "Chocolate bar.jpg"
Product.create! id: 11, name: "Pack of sweets", category: "Food", image: "Pack of sweets.jpg"
Product.create! id: 12, name: "Sandwich", category: "Food", image: "Sandwich.jpg"
Product.create! id: 13, name: "Big plastic cup", category: "Else", image: "Big plastic cup.jpg"
Product.create! id: 14, name: "Carrier bag", category: "Else", image: "Carrier bag.jpg"
Product.create! id: 16, name: "Napkin", category: "Else", image: "Napkin.jpg"
Product.create! id: 17, name: "Paper roll", category: "Else", image: "Paper roll.jpg"
Product.create! id: 18, name: "Cutlery", category: "Else", image: "Cutlery.jpg"
Product.create! id: 19, name: "Pack of crisps", category: "Food", image: "Pack of crisps.jpg"
Product.create! id: 21, name: "Bottle of watter", category: "Food", image: "Bottle of watter.jpg"
Product.create! id: 22, name: "Cake", category: "Food", image: "Cake.jpg"
Product.create! id: 23, name: "Pair of socks", category: "Else", image: "Pair of socks.jpg"
Product.create! id: 24, name: "Sleeping bag", category: "Else", image: "Sleeping bag.jpg"
Product.create! id: 25, name: "Underwear (female)", category: "Else", image: "Underwear (female).jpg"
Product.create! id: 26, name: "Hat", category: "Else", image: "Hat.jpg"
Product.create! id: 27, name: "Scarf", category: "Else", image: "Scarf.jpg"
Product.create! id: 28, name: "Jumper", category: "Else", image: "Jumper.jpg"
Product.create! id: 29, name: "Pair of trainers", category: "Else", image: "Pair of trainers.jpg"
Product.create! id: 30, name: "Roll matt", category: "Else", image: "Roll matt.jpg"
Product.create! id: 31, name: "Foil blanket", category: "Else", image: "Foil blanket.jpg"
Product.create! id: 32, name: "Heat pad", category: "Else", image: "Heat pad.jpg"
Product.create! id: 33, name: "Towel", category: "Else", image: "Towel.jpg"
Product.create! id: 34, name: "Blanket", category: "Else", image: "Blanket.jpg"
Product.create! id: 35, name: "Feminine hygiene products", category: "Else", image: "Feminine hygiene products.jpg"
Product.create! id: 36, name: "Toothbrush", category: "Else", image: "Toothbrush.jpg"
Product.create! id: 37, name: "Pack of baby wipes", category: "Else", image: "Pack of baby wipes.jpg"
Product.create! id: 38, name: "Phone charger", category: "Else", image: "Phone charger.jpg"
Product.create! id: 39, name: "Underwear (male)", category: "Else", image: "Underwear (male).jpg"
Product.create! id: 40, name: "Pair of gloves", category: "Else", image: "Pair of gloves.jpg"