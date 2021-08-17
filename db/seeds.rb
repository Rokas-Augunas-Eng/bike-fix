require 'faker'
require 'open-uri'

Booking.destroy_all
puts "Booking database deleted"

Mechanic.destroy_all
puts "Mechanic database deleted"

User.destroy_all
puts "User database deleted"

# User creation

user = User.create!([
    email: "test@test.com",
    password: "123456",
  ])

# Mechanic creation

mechanic_1 = Mechanic.new(
  location: "334 Walworth Rd, London",
  name: "Bike Bros",
  insta_availability: true,
  user: User.first
)

mechanic_1.save!
puts 'Created new mechanic'

mechanic_2 = Mechanic.new(
  location: "334 Walworth Rd, London",
  name: "Bikes for days",
  insta_availability: true,
  user: User.first
)

mechanic_2.save!
puts 'Created new mechanic'

mechanic_3 = Mechanic.new(
  location: "66 Gedling Pl, London",
  name: "Get fix",
  insta_availability: false,
  user: User.first
)

mechanic_3.save!
puts 'Created new mechanic'

puts "Created #{User.count} users"
puts "Created #{Mechanic.count} mechanics"