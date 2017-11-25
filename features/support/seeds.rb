# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

PackageStatus.delete_all
PackageStatus.create! id: 1, name: "Available"
PackageStatus.create! id: 2, name: "In approval"
PackageStatus.create! id: 3, name: "Assigned"
PackageStatus.create! id: 4, name: "Cancelled"
PackageStatus.create! id: 5, name: "Collected"

Product.delete_all
Product.create! id: 1, name: "Banana", category: "Food"
Product.create! id: 2, name: "Apple", category: "Food"
Product.create! id: 4, name: "Teabags", category: "Food"
Product.create! id: 5, name: "Coffee", category: "Food"
Product.create! id: 6, name: "Hot chocolate", category: "Food"
Product.create! id: 7, name: "Sugar", category: "Food"
Product.create! id: 8, name: "Biscuit", category: "Food" 
Product.create! id: 10, name: "Chocolate bar", category: "Food"
Product.create! id: 11, name: "Sweets", category: "Food"
Product.create! id: 12, name: "Sandwich", category: "Food"
Product.create! id: 13, name: "Big plastic cup", category: "Else"
Product.create! id: 14, name: "Carrier bag", category: "Else"
Product.create! id: 16, name: "Napkin", category: "Else"
Product.create! id: 17, name: "Paper roll", category: "Else"
Product.create! id: 18, name: "Cutlery", category: "Else"
Product.create! id: 19, name: "Pack of crisps", category: "Food"
Product.create! id: 21, name: "Water", category: "Food"
Product.create! id: 22, name: "Cake", category: "Food"
Product.create! id: 23, name: "Pair of socks", category: "Else"
Product.create! id: 24, name: "Sleeping bag", category: "Else"
Product.create! id: 25, name: "Underwear (female)", category: "Else"
Product.create! id: 26, name: "Hat", category: "Else"
Product.create! id: 27, name: "Scarf", category: "Else"
Product.create! id: 28, name: "Jumper", category: "Else"
Product.create! id: 29, name: "Trainer", category: "Else"
Product.create! id: 30, name: "Roll matt", category: "Else"
Product.create! id: 31, name: "Foil blanket", category: "Else"
Product.create! id: 32, name: "Heat pad", category: "Else"
Product.create! id: 33, name: "Towel", category: "Else"
Product.create! id: 34, name: "Blanket", category: "Else"
Product.create! id: 35, name: "Toiletries - feminine hygiene products", category: "Else"
Product.create! id: 36, name: "Tooth brush", category: "Else"
Product.create! id: 37, name: "Pack of baby wipes", category: "Else"
Product.create! id: 38, name: "Phone chargers", category: "Else"
Product.create! id: 39, name: "Underwear (male)", category: "Else"
Product.create! id: 40, name: "Gloves", category: "Else"