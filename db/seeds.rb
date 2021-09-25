require 'faker'
require 'open-uri'

Chatroom.destroy_all
puts "Chatroom database deleted"

Review.destroy_all
puts "Reviews database deleted"

Booking.destroy_all
puts "Booking database deleted"

Order.destroy_all
puts "Order database deleted"

Service.destroy_all
puts "Service database deleted"

User.destroy_all
puts "User database deleted"

# Users (who are not mechanics) creation

user_1 = User.create!(
  email: "user1@test.com", 
  password: "123456",
  first_name: "Bob",
)

profile_1 = User.create!(
  email: "bike@bike.com", 
  password: "123456",
  first_name: "Tom",
)

# Users (who are mechanics) creation

user_2 = User.create!(
  email: "user2@test.com",
  password: "123456",
  mechanic: true,
  location: "4 Ebor St, London E1 6AW",
  company_name: "Bike Bros",
  mechanic_name: "Jnne de Aoly",
  insta_availability: true,
)

user_2.photo.attach(io: File.open(Rails.root.join('app/assets/images/2bike_image.jpg')),
filename: '2bike_image.jpg')
user_2.save!

user_3 = User.create!(
  email: "user3@test.com",
  password: "123456",
  mechanic: true,
  location: "35C Newington Green, London N16 9PR",
  company_name: "Push Cycles",
  mechanic_name: "Joris bohnson",
  insta_availability: false,
)

user_3.photo.attach(io: File.open(Rails.root.join('app/assets/images/3bike_image.jpg')),
filename: '3bike_image.jpg')
user_3.save!

user_4 = User.create!(
  email: "user4@test.com",
  password: "123456",
  mechanic: true,
  location: "49 Old St EC1V 9HX",
  company_name: "Look Mum No Hands!",
  mechanic_name: "Anne de Joly",
  insta_availability: true,
)
  
user_4.photo.attach(io: File.open(Rails.root.join('app/assets/images/4bike_image.jpg')),
filename: '4bike_image.jpg')
user_4.save!

user_5 = User.create!(
  email: "user5@test.com",
  password: "123456",
  mechanic: true,
  location: "12 Crossthwaite Avenue, Herne Hill, SE5 8ET",
  company_name: "The Bike Project",
  mechanic_name: "Svenja",
  insta_availability: true,
)
  
user_5.photo.attach(io: File.open(Rails.root.join('app/assets/images/5bike_image.jpg')),
filename: '5bike_image.jpg')
user_5.save!

user_6 = User.create!(
  email: "user6@test.com",
  password: "123456",
  mechanic: true,
  location: "Bethnal Green Road, London, E2 6DG",
  company_name: "Brick Lane Bikes",
  mechanic_name: "Jurgs",
  insta_availability: false,
)
  
user_6.photo.attach(io: File.open(Rails.root.join('app/assets/images/6bike_image.jpg')),
filename: '6bike_image.jpg')
user_6.save!

user_7 = User.create!(
  email: "user7@test.com",
  password: "123456",
  mechanic: true,
  location: "296-298 Brixton Road, SW9 6AG",
  company_name: "Brixton Cycles",
  mechanic_name: "Bob",
  insta_availability: false,
)
  
user_7.photo.attach(io: File.open(Rails.root.join('app/assets/images/7bike_image.jpg')),
filename: '7bike_image.jpg')
user_7.save!

user_8 = User.create!(
  email: "user8@test.com",
  password: "123456",
  mechanic: true,
  location: "49-53 Gray's Inn Road, London, WC1X 8PP",
  company_name: "Condor Cycles",
  mechanic_name: "Gary",
  insta_availability: false,
)
  
user_8.photo.attach(io: File.open(Rails.root.join('app/assets/images/8bike_image.jpg')),
filename: '8bike_image.jpg')
user_8.save!

user_9 = User.create!(
  email: "user9@test.com",
  password: "123456",
  mechanic: true,
  location: "54 Earl’s Court Road, W8 6EJ",
  company_name: "Cyclecare Kensington",
  mechanic_name: "Peter",
  insta_availability: false,
)
  
user_9.photo.attach(io: File.open(Rails.root.join('app/assets/images/9bike_image.jpg')),
filename: '9bike_image.jpg')
user_9.save!

user_10 = User.create!(
  email: "user10@test.com",
  password: "123456",
  mechanic: true,
  location: "37 Bermondsey St, Bermondsey, SE1 3JW",
  company_name: "Fully Charged",
  mechanic_name: "Chris",
  insta_availability: false,
)
  
user_10.photo.attach(io: File.open(Rails.root.join('app/assets/images/10bike_image.jpg')),
filename: '10bike_image.jpg')
user_10.save!

user_11 = User.create!(
  email: "user11@test.com",
  password: "123456",
  mechanic: true,
  location: "69 The Cut, London SE1 8LL",
  company_name: "Big Bad Bikes",
  mechanic_name: "Ahmed",
  insta_availability: false,
)
  
user_11.photo.attach(io: File.open(Rails.root.join('app/assets/images/11bike_image.jpg')),
filename: '11bike_image.jpg')
user_11.save!

user_12 = User.create!(
  email: "user12@test.com",
  password: "123456",
  mechanic: true,
  location: "97-99 Clerkenwell Rd, London EC1R 5BX",
  company_name: "Raleigh Bikes",
  mechanic_name: "David",
  insta_availability: false,
)

user_12.photo.attach(io: File.open(Rails.root.join('app/assets/images/12bike_image.jpg')),
filename: '12bike_image.jpg')
user_12.save!

user_13 = User.create!(
  email: "user13@test.com",
  password: "123456",
  mechanic: true,
  location: "41 Cropley St, London N1 7HT",
  company_name: "CycleCrazy",
  mechanic_name: "Josh",
  insta_availability: false,
)

user_13.photo.attach(io: File.open(Rails.root.join('app/assets/images/13bike_image.jpg')),
filename: '13bike_image.jpg')
user_13.save!

# Service creation

# user_2

service_2_1 = Service.create!(
  repair_name: "Tyre Fitting (Per Wheel)",
  sku: "Tyre Fitting (Per Wheel)",
  price: 15,
  user: user_2,
)

service_2_2 = Service.create!(
  repair_name: "New Brake Cable (Single)",
  sku: "New Brake Cable (Single)",
  price: 12,
  user: user_2,
)

service_2_3 = Service.create!(
  repair_name: "Brake and Gear Adjustments",
  sku: "Brake and Gear Adjustments",
  price: 14.5,
  user: user_2,
)

service_2_4 = Service.create!(
  repair_name: "Chain Repair",
  sku: "Chain Repair",
  price: 10,
  user: user_2,
)

service_2_5 = Service.create!(
  repair_name: "Wheel tuning",
  sku: "Wheel tuning",
  price: 40,
  user: user_2,
)

# user_3

service_3_1 = Service.create!(
  repair_name: "Tyre Fitting (Per Wheel)",
  sku: "Tyre Fitting (Per Wheel)",
  price: 22.5,
  user: user_3,
)

service_3_2 = Service.create!(
  repair_name: "New Brake Cable (Single)",
  sku: "New Brake Cable (Single)",
  price: 18,
  user: user_3,
)

service_3_3 = Service.create!(
  repair_name: "Brake and Gear Adjustments",
  sku: "Brake and Gear Adjustments",
  price: 20,
  user: user_3,
)

service_3_4 = Service.create!(
  repair_name: "Chain Repair",
  sku: "Chain Repair",
  price: 22,
  user: user_3,
)

service_3_5 = Service.create!(
  repair_name: "Wheel tuning",
  sku: "Wheel tuning",
  price: 45,
  user: user_3,
)

# user 4

service_4_1 = Service.create!(
  repair_name: "Total Tyre Refit",
  sku: "Total Tyre Refit",
  price: rand(10..30),
  user: user_4,
)
service_4_2 = Service.create!(
  repair_name: "Inner Tube Fix",
  sku: "Inner Tube Fix",
  price: rand(10..20),
  user: user_4,
)

# user 5

service_5_1 = Service.create!(
  repair_name: "Inner Tube",
  sku: "Inner Tube",
  price: 10,
  user: user_5,
)
service_5_2 = Service.create!(
  repair_name: "Handlebar Replacement",
  sku: "Handlebar Replacement",
  price: 30,
  user: user_5,
)

# user 6

service_6_1 = Service.create!(
  repair_name: "Inner Tube Replacement",
  sku: "Inner Tube Replacement",
  price: 30,
  user: user_6,
)
service_6_2 = Service.create!(
  repair_name: "Inner tube Refit",
  sku: "Inner tube Refit",
  price: 30,
  user: user_6,
)
service_6_3 = Service.create!(
  repair_name: "Pedal Work",
  sku: "Pedal Work",
  price: 30,
  user: user_6,
)
service_6_4 = Service.create!(
  repair_name: "Frame Replacement",
  sku: "Frame Replacement",
  price: 30,
  user: user_6,
)

# user 7

service_7_1 = Service.create!(
  repair_name: "Total Tyre Refit",
  sku: "Total Tyre Refit",
  price: rand(10..20),
  user: user_7,
)
service_7_2 = Service.create!(
  repair_name: "Inner Tube Fix",
  sku: "Inner Tube Fix",
  price: rand(10..20),
  user: user_7,
)

service_7_3 = Service.create!(
  repair_name: "Frame Replacement",
  sku: "Frame Replacement",
  price: 40,
  user: user_7,
)

# user 8

service_8_1 = Service.create!(
  repair_name: "Total Tyre Refit",
  sku: "Total Tyre Refit",
  price: rand(10..20),
  user: user_8,
)

service_8_2 = Service.create!(
  repair_name: "Inner Tube Fix",
  sku: "Inner Tube Fix",
  price: rand(10..20),
  user: user_8,
)

# user 9

service_9_1 = Service.create!(
  repair_name: "Total Tyre Refit",
  sku: "Total Tyre Refit",
  price: rand(10..20),
  user: user_9,
)
service_9_2 = Service.create!(
  repair_name: "Inner Tube Fix",
  sku: "Inner Tube Fix",
  price: rand(10..20),
  user: user_9,
)

service_9_3 = Service.create!(
  repair_name: "Wheel tuning",
  sku: "Wheel tuning",
  price: 35,
  user: user_9,
)

# user 10

service_10_1 = Service.create!(
  repair_name: "Total Tyre Refit",
  sku: "Total Tyre Refit",
  price: rand(10..20),
  user: user_10,
)
service_10_2 = Service.create!(
  repair_name: "Inner Tube Fix",
  sku: "Inner Tube Fix",
  price: rand(10..20),
  user: user_10,
)

# user 11

service_11_1 = Service.create!(
  repair_name: "Total Tyre Refit",
  sku: "Total Tyre Refit",
  price: rand(10..20),
  user: user_11,
)
service_11_2 = Service.create!(
  repair_name: "Inner Tube Fix",
  sku: "Inner Tube Fix",
  price: rand(10..20),
  user: user_11,
)

# user 12

service_12_1 = Service.create!(
  repair_name: "Total Tyre Refit",
  sku: "Total Tyre Refit",
  price: rand(10..20),
  user: user_12,
)
service_12_2 = Service.create!(
  repair_name: "Inner Tube Fix",
  sku: "Inner Tube Fix",
  price: rand(10..20),
  user: user_12,
)

# user 13

service_13_1 = Service.create!(
  repair_name: "Total Tyre Refit",
  sku: "Total Tyre Refit",
  price: rand(10..20),
  user: user_13,
)
service_13_2 = Service.create!(
  repair_name: "Inner Tube Fix",
  sku: "Inner Tube Fix",
  price: rand(10..20),
  user: user_13,
)

# Bookings & Chatroom creation

booking_2_1 = Booking.create!(
  user: user_1,
  service: service_2_1,
  booking_location: "138 Kingsland Rd, London E2 8DY",
)
Chatroom.create!(booking: booking_2_1)
Order.create!(user: user_1, service: service_2_1)

booking_3_1 = Booking.create!(
  user: user_1,
  service: service_3_1,
  booking_location: "138 Kingsland Rd, London E2 8DY",
)
Chatroom.create!(booking: booking_3_1)
Order.create!(user: user_1, service: service_3_1)

booking_4_1 = Booking.create!(
  user: user_1,
  service: service_4_1,
  booking_location: "138 Kingsland Rd, London E2 8DY",
)
Chatroom.create!(booking: booking_4_1)
Order.create!(user: user_1, service: service_4_1)

booking_5_1 = Booking.create!(
  user: user_1,
  service: service_5_1,
  booking_location: "138 Kingsland Rd, London E2 8DY",
)
Chatroom.create!(booking: booking_5_1)
Order.create!(user: user_1, service: service_5_1)

booking_6_1 = Booking.create!(
  user: user_1,
  service: service_6_1,
  booking_location: "138 Kingsland Rd, London E2 8DY",
)
Chatroom.create!(booking: booking_6_1)
Order.create!(user: user_1, service: service_6_1)

booking_7_1 = Booking.create!(
  user: user_1,
  service: service_7_1,
  booking_location: "138 Kingsland Rd, London E2 8DY",
)
Chatroom.create!(booking: booking_7_1)
Order.create!(user: user_1, service: service_7_1)

booking_8_1 = Booking.create!(
  user: user_8,
  service: service_8_1,
  booking_location: "138 Kingsland Rd, London E2 8DY",
)
Chatroom.create!(booking: booking_8_1)
Order.create!(user: user_1, service: service_8_1)

booking_9_1 = Booking.create!(
  user: user_1,
  service: service_9_1,
  booking_location: "138 Kingsland Rd, London E2 8DY",
)
Chatroom.create!(booking: booking_9_1)
Order.create!(user: user_1, service: service_9_1)

booking_10_1 = Booking.create!(
  user: user_1,
  service: service_10_1,
  booking_location: "138 Kingsland Rd, London E2 8DY",
)
Chatroom.create!(booking: booking_10_1)
Order.create!(user: user_1, service: service_10_1)

booking_11_1 = Booking.create!(
  user: user_1,
  service: service_11_1,
  booking_location: "138 Kingsland Rd, London E2 8DY",
)
Chatroom.create!(booking: booking_11_1)
Order.create!(user: user_1, service: service_11_1)

booking_12_1 = Booking.create!(
  user: user_1,
  service: service_12_1,
  booking_location: "138 Kingsland Rd, London E2 8DY",
)
Chatroom.create!(booking: booking_12_1)
Order.create!(user: user_1, service: service_12_1)

# # Reviews creation

review_2_1 = Review.create!(
  booking: booking_2_1,
  rating: 4,
  content: 'Voytek was great, had fabulous knowledge about a range of different bikes and how they drove. Always gave me correct and accurate information'
)

review_3_1 = Review.create!(
  booking: booking_3_1,
  rating: 2,
  content: 'Excellent service, quicker than expected delivery.'
)

review_4_1 = Review.create!(
  booking: booking_4_1,
  rating: 3,
  content: 'Overall a good service that I would recommend'
)

review_5_1 = Review.create!(
  booking: booking_5_1,
  rating: 4,
  content: 'Great product and fast delivery'
)

review_6_1 = Review.create!(
  booking: booking_6_1,
  rating: 5,
  content: "genuinely impressed"
)

review_4_2 = Review.create!(
  booking: booking_4_1,
  rating: 5,
  content: '10/10 loved'
)
review_5_1 = Review.create!(
  booking: booking_4_1,
  rating: 2,
  content: 'Very fast, recomend Trusted 100%'
)
review_5_2 = Review.create!(
  booking: booking_5_1,
  rating: 5,
  content: 'such a fantastic service I was blown away'
)

review_6_1 = Review.create!(
  booking: booking_6_1,
  rating: rand(1..5),
)

review_7_1 = Review.create!(
  booking: booking_7_1,
  rating: rand(1..5),
)

review_8_1 = Review.create!(
  booking: booking_8_1,
  rating: rand(1..5),
)

review_9_1 = Review.create!(
  booking: booking_9_1,
  rating: rand(1..5),
)

review_10_1 = Review.create!(
  booking: booking_10_1,
  rating: rand(1..5),
)

review_11_1 = Review.create!(
  booking: booking_11_1,
  rating: 5,
  content: "Fantastic, I'm totally blown away by"
)

review_12_1 = Review.create!(
  booking: booking_12_1,
  rating: 5,
  content: "I will recommend you to my colleagues"
)

puts "Created #{User.count} users"
puts "Created #{Service.count} services"
puts "Created #{Booking.count} bookings"
puts "Created #{Review.count} reviews"
puts "Created #{Chatroom.count} chatrooms"
