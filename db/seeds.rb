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
Product.create! id: 1, name: "banana"
Product.create! id: 2, name: "apple"
Product.create! id: 4, name: "Teabags"
Product.create! id: 5, name: "coffee"
Product.create! id: 6, name: "hot chocolate"
Product.create! id: 7, name: "sugar"
Product.create! id: 8, name: "biscuit" 
Product.create! id: 10, name: "chocolate bar"
Product.create! id: 11, name: "sweets"
Product.create! id: 12, name: "sandwich"
Product.create! id: 13, name: "big plastic cup"
Product.create! id: 14, name: "carrier bag"
Product.create! id: 16, name: "napkin"
Product.create! id: 17, name: "paper roll"
Product.create! id: 18, name: "cutlery"
Product.create! id: 19, name: "pack of crisps"
Product.create! id: 21, name: "water"
Product.create! id: 22, name: "cake"
Product.create! id: 23, name: "pair of socks"
Product.create! id: 24, name: "sleeping bag"
Product.create! id: 25, name: "underwear (female)"
Product.create! id: 26, name: "hat"
Product.create! id: 27, name: "scarf"
Product.create! id: 28, name: "jumper"
Product.create! id: 29, name: "trainer"
Product.create! id: 30, name: "roll matt"
Product.create! id: 31, name: "foil blanket"
Product.create! id: 32, name: "heat pad"
Product.create! id: 33, name: "towel"
Product.create! id: 34, name: "blanket"
Product.create! id: 35, name: "toiletries - female period products"
Product.create! id: 36, name: "tooth brush"
Product.create! id: 37, name: "pack of baby wipes"
Product.create! id: 38, name: "phone chargers"
Product.create! id: 39, name: "underwear (male)"
Product.create! id: 40, name: "gloves"