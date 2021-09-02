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

# Users (who are not mechanics) creation

user_1 = User.create!(
  email: "user1@test.com",
  password: "123456",
  )
user_1b = User.create!(
  email: "user1b@test.com",
  password: "123456",
  )
user_1c = User.create!(
  email: "user1c@test.com",
  password: "123456",
  )
user_1d = User.create!(
  email: "user1d@test.com",
  password: "123456",
  )
user_1e = User.create!(
  email: "user1e@test.com",
  password: "123456",
  )
user_1f = User.create!(
  email: "user1f@test.com",
  password: "123456",
  )

# Users (who are mechanics) creation

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
  location: "69 The Cut, London SE1 8LL",
  company_name: "Big Bad Bikes",
  insta_availability: false,
)
user_12 = User.create!(
  email: "user12@test.com",
  password: "123456",
  mechanic: true,
  location: "97-99 Clerkenwell Rd, London EC1R 5BX",
  company_name: "Raleigh Bikes",
  insta_availability: false,
)
user_13 = User.create!(
  email: "user13@test.com",
  password: "123456",
  mechanic: true,
  location: "41 Cropley St, London N1 7HT",
  company_name: "CycleCrazy",
  insta_availability: false,
)
user_14 = User.create!(
  email: "user14@test.com",
  password: "123456",
  mechanic: true,
  location: "125 St John's Hill, London SW1 1SZ",
  company_name: "London Race Bikes",
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
  repair_name: "Wheel tuning",
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
  repair_name: "Wheel tuning",
  cost: 45,
  user: user_3,
)

# user 4

service_4_1 = Service.create!(
  repair_name: "Total Tyre Refit",
  cost: 30,
  user: user_4,
)
service_4_2 = Service.create!(
  repair_name: "Inner Tube Fix",
  cost: 10,
  user: user_4,
)

# user 5

service_5_1 = Service.create!(
  repair_name: "Inner Tube",
  cost: 10,
  user: user_5,
)
service_5_2 = Service.create!(
  repair_name: "Handlebar Replacement",
  cost: 30,
  user: user_5,
)

# user 6

service_6_1 = Service.create!(
  repair_name: "Inner Tube Replacement",
  cost: 30,
  user: user_6,
)
service_6_2 = Service.create!(
  repair_name: "Inner tube Refit",
  cost: 30,
  user: user_6,
)
service_6_3 = Service.create!(
  repair_name: "Pedal Work",
  cost: 30,
  user: user_6,
)
service_6_4 = Service.create!(
  repair_name: "Frame Replacement",
  cost: 30,
  user: user_6,
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
booking_3_1 = Booking.create!(
  user: user_1,
  service: service_3_1,
  booking_location: "12 High Street, Kensington",
  comment: "Help! Not entirely sure what's wrong but bike is now not working"
)

booking_3_2 = Booking.create!(
  user: user_1,
  service: service_3_2,
  booking_location: "135 Creek Rd, London SE8 3BU",
  comment: "Brake is absolutely shot"
)

booking_4_1 = Booking.create!(
  user: user_1b,
  service: service_4_1,
  booking_location: "241 Eversholt St, London NW1 1BE",
  comment: "Tyre damaged, can't seem to fix"
)

booking_4_2 = Booking.create!(
  user: user_1c,
  service: service_4_2,
  booking_location: "King Street, Southwark, London",
  comment: "Tyre Popped!"
)
booking_5_1 = Booking.create!(
  user: user_1c,
  service: service_5_1,
  booking_location: "118 Bethnal Green Rd, London E2 6DG",
  comment: "Inner Tube gone"
)

booking_5_2 = Booking.create!(
  user: user_1d,
  service: service_5_2,
  booking_location: "49-53 Grays Inn Rd, London WC1X 8PP",
  comment: "Handlebars are out of alignment but have been having a problem for a while getting worse, full replacement please!"
)
booking_6_1 = Booking.create!(
  user: user_1e,
  service: service_6_1,
  booking_location: "6 Tooley St, London SE1 2SY",
  comment: "Tyre has gone, think it's the inner tube!!!"
)



# Reviews creation

review_2_1 = Review.create!(
  booking: booking_2_1,
  rating: 5,
  content: 'Voytek was great, had fabulous knowledge about a range of different bikes and how they drove. Always gave me correct and accurate information'
)

review_2_2 = Review.create!(
  booking: booking_2_2,
  rating: 2,
  content: 'Excellent service, quicker than expected delivery.'
)
review_3_1 = Review.create!(
  booking: booking_3_1,
  rating: 3,
  content: 'Overall a good service that I would recommend'
)

review_3_2 = Review.create!(
  booking: booking_3_2,
  rating: 2,
  content: 'Great product and fast delivery'
)
review_4_1 = Review.create!(
  booking: booking_4_1,
  rating: 5,
  content: "genuinely impressed"
)

review_4_2 = Review.create!(
  booking: booking_4_2,
  rating: 5,
  content: '10/10 loved'
)
review_5_1 = Review.create!(
  booking: booking_5_1,
  rating: 2,
  content: 'Very fast, recomend Trusted 100%'
)
review_5_2 = Review.create!(
  booking: booking_5_2,
  rating: 5,
  content: 'such a fantastic service I was blown away'
)

review_6_1 = Review.create!(
  booking: booking_6_1,
  rating: 5,
  content: 'Excelent value for money faster deliverys'
)









'A good price and easy to purchase online.'
'Easy has a lot in stock to choose from!'
'After messing up my booking I had to phone up to speak to a person. The lady I spoke to was a fabulous help and sorted everything out in a few minutes.'

puts "Created #{User.count} users"
puts "Created #{Service.count} services"
puts "Created #{Booking.count} bookings"
puts "Created #{Review.count} reviews"
