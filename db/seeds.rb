# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
restaurants = Restaurant.create([
  {name: "nandos", address: "123 street", phone_number:"123456789", category: "chinese"},
  {name: "nandos7", address: "123 street", phone_number:"123456789", category: "chinese"},
  {name: "nandos23", address: "123 street", phone_number:"123456789", category: "chinese"}
])
