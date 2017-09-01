# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(first_name: "Leroy", last_name: "Cohen", email: "tom@tom.com", password: "password", phone: "1234567890", picture_url: "http://i0.kym-cdn.com/entries/icons/original/000/022/940/spongebobicon.jpg", bio: "Hi I like help you", topics: ["Rails", "Sinatra", "Chipotle"])
User.create(first_name: "Steve", last_name: "Smith", email: "steve@steve.com", password: "password", phone: "2234567890", picture_url: "http://thumbs.dreamstime.com/x/young-owl-wearing-hat-16562958.jpg", bio: "I'm a bird", topics: ["automatic dishwashers", "windshield wipers"])
User.create(first_name: "Douglas", last_name: "Davison", email: "bom@tom.com", password: "password", phone: "1234567891")
User.create(first_name: "Matthew", last_name: "Flesher", email: "com@tom.com", password: "password", phone: "1334567890")
User.create(first_name: "Andrew", last_name: "Cook", email: "dom@tom.com", password: "password", phone: "1234547890")
User.create(first_name: "Anthony", last_name: "Ingerick", email: "rom@tom.com", password: "password", phone: "1239567890")
User.create(first_name: "Peter", last_name: "White", email: "wom@tom.com", password: "password", phone: "1234537890")


8.times do
  Slot.create(duration: "60 minutes", start_time: Time.now, date: Date.today, mentor_id: 1)
end

2.times do
  Slot.create(duration: "1 hour 30 minutes", start_time: Time.now, date: Date.today, mentor_id: 1)
end


6.times do
  Slot.create(duration: "60 minutes", start_time: Time.now, date: Date.today, mentor_id: 5)
end

6.times do
  Slot.create(duration: "30 minutes", start_time: Time.now, date: Date.today, mentor_id: 5)
end

7.times do
 Slot.create(duration: "2 hours", start_time: Time.now, date: Date.today, mentor_id: 2)
end

8.times do
  Slot.create(duration: "1 hour 30 minutes", start_time: Time.now, date: Date.today, mentor_id: 3)
end

4.times do
  Slot.create(duration: "30 minutes", start_time: Time.now, date: Date.today, mentor_id: 4)
end

2.times do
  Slot.create(duration: "30 minutes", start_time: Time.now.strftime("%H:%M:%S"), date: Date.today, mentor_id: 6)
end

Appointment.create(mentee_id: 6, slot_id: 6)

2.times do
  Appointment.create(mentee_id: 2, slot_id: 2)
end

3.times do
  Appointment.create(mentee_id: 3, slot_id: 3)
end

4.times do
  Appointment.create(mentee_id: 4, slot_id: 4)
end

5.times do
  Appointment.create(mentee_id: 5, slot_id: 5)
end

6.times do
  Appointment.create(mentee_id: 1, slot_id: 1)
end
