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
Product.create! id: 1, name: "banana", expiration_date: '2018-11-24'
Product.create! id: 2, name: "apple", expiration_date: '2018-11-24'
Product.create! id: 4, name: "Teabags", expiration_date: '2018-11-24'
Product.create! id: 5, name: "coffee", expiration_date: '2018-11-24'
Product.create! id: 6, name: "hot chocolate", expiration_date: '2018-11-24'
Product.create! id: 7, name: "sugar", expiration_date: '2018-11-24'
Product.create! id: 8, name: "biscuit", expiration_date: '2018-11-24' 
Product.create! id: 10, name: "chocolate bar", expiration_date: '2018-11-24'
Product.create! id: 11, name: "sweets", expiration_date: '2018-11-24'
Product.create! id: 12, name: "sandwich", expiration_date: '2018-11-24'
Product.create! id: 13, name: "big plastic cup", expiration_date: '2018-11-24'
Product.create! id: 14, name: "carrier bag", expiration_date: '2018-11-24'
Product.create! id: 16, name: "napkin", expiration_date: '2018-11-24'
Product.create! id: 17, name: "paper roll", expiration_date: '2018-11-24'
Product.create! id: 18, name: "cutlery", expiration_date: '2018-11-24'
Product.create! id: 19, name: "pack of crisps", expiration_date: '2018-11-24'
Product.create! id: 21, name: "water", expiration_date: '2018-11-24'
Product.create! id: 22, name: "cake", expiration_date: '2018-11-24'
Product.create! id: 23, name: "pair of socks", expiration_date: '2018-11-24'
Product.create! id: 24, name: "sleeping bag", expiration_date: '2018-11-24'
Product.create! id: 25, name: "underwear (female)", expiration_date: '2018-11-24'
Product.create! id: 26, name: "hat", expiration_date: '2018-11-24'
Product.create! id: 27, name: "scarf", expiration_date: '2018-11-24'
Product.create! id: 28, name: "jumper", expiration_date: '2018-11-24'
Product.create! id: 29, name: "trainer", expiration_date: '2018-11-24'
Product.create! id: 30, name: "roll matt", expiration_date: '2018-11-24'
Product.create! id: 31, name: "foil blanket", expiration_date: '2018-11-24'
Product.create! id: 32, name: "heat pad", expiration_date: '2018-11-24'
Product.create! id: 33, name: "towel", expiration_date: '2018-11-24'
Product.create! id: 34, name: "blanket", expiration_date: '2018-11-24'
Product.create! id: 35, name: "toiletries - female period products", expiration_date: '2018-11-24'
Product.create! id: 36, name: "tooth brush", expiration_date: '2018-11-24'
Product.create! id: 37, name: "pack of baby wipes", expiration_date: '2018-11-24'
Product.create! id: 38, name: "phone chargers", expiration_date: '2018-11-24'
Product.create! id: 39, name: "underwear (male)", expiration_date: '2018-11-24'
Product.create! id: 40, name: "gloves", expiration_date: '2018-11-24'