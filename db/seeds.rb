require 'faker'
require 'open-uri'

Booking.destroy_all
puts "Booking database deleted"

User.destroy_all
puts "User database deleted"

# User creation

user_1 = User.create!([
  email: "user1@test.com",
  password: "123456",
  ])

# User/Mechanic creation

user_2 = User.create!(
  email: "user2@test.com",
  password: "123456",
  mechanic: true, 
  location: "334 Walworth Rd, London",
  company_name: "Bike Bros",
  insta_availability: true,
)

user_3 = User.create!(
  email: "user3@test.com",
  password: "123456",
  mechanic: true, 
  location: "334 Walworth Rd, London",
  company_name: "Bikes for days",
  insta_availability: true,
)

user_4 = User.create!(
  email: "user4@test.com",
  password: "123456",
  mechanic: true, 
  location: "66 Gedling Pl, London",
  company_name: "Get fix",
  insta_availability: false,
)

puts "Created #{User.count} users"