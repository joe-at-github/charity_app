# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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
Product.create! id: 36, name: "Tooth brush", category: "Else", image: "Tooth brush.jpg"
Product.create! id: 37, name: "Pack of baby wipes", category: "Else", image: "Pack of baby wipes.jpg"
Product.create! id: 38, name: "Phone charger", category: "Else", image: "Phone charger.jpg"
Product.create! id: 39, name: "Underwear (male)", category: "Else", image: "Underwear (male).jpg"
Product.create! id: 40, name: "Pair of gloves", category: "Else", image: "Pair of gloves.jpg"