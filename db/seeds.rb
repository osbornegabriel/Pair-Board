# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(first_name: "Steve", last_name: "Smith", email: "steve@steve.com", password: "password", phone: "1234567890", picture_url: "http://thumbs.dreamstime.com/x/young-owl-wearing-hat-16562958.jpg", bio: "I'm a bird", topics: ["automatic dishwashers", "windshield wipers"])