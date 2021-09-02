require 'faker'
require 'open-uri'

Review.destroy_all
puts "Reviews database deleted"

Booking.destroy_all
puts "Booking database deleted"

Service.destroy_all
puts "Service database deleted"

User.destroy_all
puts "User database deleted"

# User creation

user_1 = User.create!(
  email: "user1@test.com",
  password: "123456",
  )

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
  insta_availability: true,
)

user_5 = User.create!(
  email: "user5@test.com",
  password: "123456",
  mechanic: true,
  location: "12 Crossthwaite Avenue, Herne Hill, SE5 8ET",
  company_name: "The Bike Project",
  insta_availability: true,
)

user_6 = User.create!(
  email: "user6@test.com",
  password: "123456",
  mechanic: true,
  location: "Bethnal Green Road, London, E2 6DG",
  company_name: "Brick Lane Bikes",
  insta_availability: false,
)

user_7 = User.create!(
  email: "user7@test.com",
  password: "123456",
  mechanic: true,
  location: "296-298 Brixton Road, SW9 6AG",
  company_name: "Brixton Cycles",
  insta_availability: false,
)

user_8 = User.create!(
  email: "user8@test.com",
  password: "123456",
  mechanic: true,
  location: "49-53 Gray's Inn Road, London, WC1X 8PP",
  company_name: "Condor Cycles",
  insta_availability: false,
)

user_9 = User.create!(
  email: "user9@test.com",
  password: "123456",
  mechanic: true,
  location: "54 Earl’s Court Road, W8 6EJ",
  company_name: "Cyclecare Kensington",
  insta_availability: false,
)

user_10 = User.create!(
  email: "user10@test.com",
  password: "123456",
  mechanic: true,
  location: "37 Bermondsey St, Bermondsey, SE1 3JW",
  company_name: "Fully Charged",
  insta_availability: false,
)

user_11 = User.create!(
  email: "user11@test.com",
  password: "123456",
  mechanic: true,
  location: "28 Whitmore Road, N1 5QA",
  company_name: "London Bike Kitchen",
  insta_availability: false,
)

# Service creation

# user_2

service_2_1 = Service.create!(
  repair_name: "Tyre Fitting (Per Wheel)",
  cost: 15,
  user: user_2,
)

service_2_2 = Service.create!(
  repair_name: "New Brake Cable (Single)",
  cost: 12,
  user: user_2,
)

service_2_3 = Service.create!(
  repair_name: "Brake and Gear Adjustments",
  cost: 14.5,
  user: user_2,
)

service_2_4 = Service.create!(
  repair_name: "Chain Repair",
  cost: 10,
  user: user_2,
)

service_2_5 = Service.create!(
  repair_name: "Wheel tunning",
  cost: 40,
  user: user_2,
)

# user_3

service_3_1 = Service.create!(
  repair_name: "Tyre Fitting (Per Wheel)",
  cost: 22.5,
  user: user_3,
)

service_3_2 = Service.create!(
  repair_name: "New Brake Cable (Single)",
  cost: 18,
  user: user_3,
)

service_3_3 = Service.create!(
  repair_name: "Brake and Gear Adjustments",
  cost: 20,
  user: user_3,
)

service_3_4 = Service.create!(
  repair_name: "Chain Repair",
  cost: 22,
  user: user_3,
)

service_3_5 = Service.create!(
  repair_name: "Wheel tunning",
  cost: 45,
  user: user_3,
)

# Bookings creation

booking_2_1 = Booking.create!(
  user: user_1,
  service: service_2_1,
  booking_location: "138 Kingsland Rd, London E2 8DY",
  comment: "Front tyre puncture"
)

booking_2_2 = Booking.create!(
  user: user_1,
  service: service_2_1,
  booking_location: "110 Kingsland Rd, London",
  comment: "Rear tyre puncture"
)


# Reviews creation

review_2_1 = Review.create!(
  booking: booking_2_1,
  rating: 5,
)

review_2_2 = Review.create!(
  booking: booking_2_2,
  rating: 2,
)

puts "Created #{User.count} users"
puts "Created #{Service.count} services"
puts "Created #{Booking.count} bookings"
puts "Created #{Review.count} reviews"
