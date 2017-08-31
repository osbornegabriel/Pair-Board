# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(first_name: "Shaq", last_name: "O'Neal", email: "shaq@o'neal.com", password: "password", phone: "1234567890")
User.create!(first_name: "John", last_name: "Cena", email: "john@cena.com", password: "password", phone: "2234567890")
User.create!(first_name: "Mufasa", last_name: "Lion", email: "mufasa@lion.com", password: "password", phone: "3234567890")
User.create!(first_name: "Jimmy", last_name: "Johns", email: "jimmy@johns.com", password: "password", phone: "4234567890")
