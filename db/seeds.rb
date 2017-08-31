# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(first_name: "Leroy", last_name: "Cohen", email: "tom@tom.com", password: "phonograph", phone: "1234567890")
Slot.create(start_time: Time.now, mentor_id: 1)
Appointment.create(start_time: Time.now, mentee_id: 1, slot_id: 1)