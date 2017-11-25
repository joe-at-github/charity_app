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
Product.create! id: 1, name: "banana", category: "Food"
Product.create! id: 2, name: "apple", category: "Food"
Product.create! id: 4, name: "Teabags", category: "Food"
Product.create! id: 5, name: "coffee", category: "Food"
Product.create! id: 6, name: "hot chocolate", category: "Food"
Product.create! id: 7, name: "sugar", category: "Food"
Product.create! id: 8, name: "biscuit", category: "Food" 
Product.create! id: 10, name: "chocolate bar", category: "Food"
Product.create! id: 11, name: "sweets", category: "Food"
Product.create! id: 12, name: "sandwich", category: "Food"
Product.create! id: 13, name: "big plastic cup", category: "Else"
Product.create! id: 14, name: "carrier bag", category: "Else"
Product.create! id: 16, name: "napkin", category: "Else"
Product.create! id: 17, name: "paper roll", category: "Else"
Product.create! id: 18, name: "cutlery", category: "Else"
Product.create! id: 19, name: "pack of crisps", category: "Food"
Product.create! id: 21, name: "water", category: "Food"
Product.create! id: 22, name: "cake", category: "Food"
Product.create! id: 23, name: "pair of socks", category: "Else"
Product.create! id: 24, name: "sleeping bag", category: "Else"
Product.create! id: 25, name: "underwear (female)", category: "Else"
Product.create! id: 26, name: "hat", category: "Else"
Product.create! id: 27, name: "scarf", category: "Else"
Product.create! id: 28, name: "jumper", category: "Else"
Product.create! id: 29, name: "trainer", category: "Else"
Product.create! id: 30, name: "roll matt", category: "Else"
Product.create! id: 31, name: "foil blanket", category: "Else"
Product.create! id: 32, name: "heat pad", category: "Else"
Product.create! id: 33, name: "towel", category: "Else"
Product.create! id: 34, name: "blanket", category: "Else"
Product.create! id: 35, name: "toiletries - female period products", category: "Else"
Product.create! id: 36, name: "tooth brush", category: "Else"
Product.create! id: 37, name: "pack of baby wipes", category: "Else"
Product.create! id: 38, name: "phone chargers", category: "Else"
Product.create! id: 39, name: "underwear (male)", category: "Else"
Product.create! id: 40, name: "gloves", category: "Else"