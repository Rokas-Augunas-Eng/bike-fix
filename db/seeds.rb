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

user_1 = User.create!(email: "user1@test.com", password: "123456")
user_1b = User.create!(email: "user1b@test.com", password: "123456")
user_1c = User.create!(email: "user1c@test.com", password: "123456")
user_1d = User.create!(email: "user1d@test.com", password: "123456")
user_1e = User.create!(email: "user1e@test.com", password: "123456")
user_1f = User.create!(email: "user1f@test.com", password: "123456")

# Users (who are mechanics) creation

user_2 = User.create!(
  email: "user2@test.com",
  password: "123456",
  mechanic: true,
  location: "334 Walworth Rd, London",
  company_name: "Bike Bros",
  mechanic_name: "Ervis Lapi",
  insta_availability: true,
)

# file = File.open(Rails.root.join("app/assets/images/bike-shop1.jpg" cl_image_path))
file = URI.open("https://scontent-lcy1-1.cdninstagram.com/v/t51.2885-15/sh0.08/e35/p640x640/219836278_188275006517188_8238607941948797610_n.jpg?_nc_ht=scontent-lcy1-1.cdninstagram.com&_nc_cat=104&_nc_ohc=dEZ-I5BYUXMAX_wWN6L&edm=AP_V10EBAAAA&ccb=7-4&oh=3aa111fa046a366470552555034e017a&oe=6149B5B0&_nc_sid=4f375e%20640w,")
user_2.photo.attach(io: file, filename: 'bike-shop2.jpg', content_type: 'image/jpg')
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

file = URI.open("https://scontent-lcy1-1.cdninstagram.com/v/t51.2885-15/sh0.08/e35/s640x640/100576064_253220322437022_2196281691155403860_n.jpg?_nc_ht=scontent-lcy1-1.cdninstagram.com&_nc_cat=106&_nc_ohc=IWx9QwycDHUAX9Ew9QQ&tn=g9MwsTxsR7GZb5Be&edm=AP_V10EBAAAA&ccb=7-4&oh=d20e4f041f2046083c551f199a840054&oe=614A411D&_nc_sid=4f375e")
user_3.photo.attach(io: file, filename: 'bike-shop3.jpg', content_type: 'image/jpg')
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
  
file = URI.open("https://scontent-lcy1-1.cdninstagram.com/v/t51.2885-15/sh0.08/e35/s640x640/235046342_194975949320910_5658984783879966587_n.jpg?_nc_ht=scontent-lcy1-1.cdninstagram.com&_nc_cat=106&_nc_ohc=okVu0t1YjPIAX9l5DtU&edm=AP_V10EBAAAA&ccb=7-4&oh=d37a247d32626e01fbe4eb3b3e015ce7&oe=614A71AD&_nc_sid=4f375e%20640w")
user_4.photo.attach(io: file, filename: 'bike-shop4.jpg', content_type: 'image/jpg')
user_4.save!

user_5 = User.create!(
  email: "user5@test.com",
  password: "123456",
  mechanic: true,
  location: "12 Crossthwaite Avenue, Herne Hill, SE5 8ET",
  company_name: "The Bike Project",
  insta_availability: true,
)
  
file = URI.open("https://scontent-lcy1-1.cdninstagram.com/v/t51.2885-15/sh0.08/e35/p640x640/212091556_988791718589966_1210441633639865853_n.jpg?_nc_ht=scontent-lcy1-1.cdninstagram.com&_nc_cat=102&_nc_ohc=f0sepvyaoBYAX8NNyBm&edm=AP_V10EBAAAA&ccb=7-4&oh=e631394228213302a8808bc3292787e4&oe=614A240E&_nc_sid=4f375e%20640w")
user_5.photo.attach(io: file, filename: 'bike-shop5.jpg', content_type: 'image/jpg')
user_5.save!

user_6 = User.create!(
  email: "user6@test.com",
  password: "123456",
  mechanic: true,
  location: "Bethnal Green Road, London, E2 6DG",
  company_name: "Brick Lane Bikes",
  insta_availability: false,
)
  
file = URI.open("https://scontent-lcy1-1.cdninstagram.com/v/t51.2885-15/sh0.08/e35/s640x640/154848317_502208430941492_9204043895975537111_n.jpg?_nc_ht=scontent-lcy1-1.cdninstagram.com&_nc_cat=108&_nc_ohc=ocKpKK7PGpsAX-knL9h&edm=AP_V10EBAAAA&ccb=7-4&oh=67ac758b5810c5b3ff6a0509d36b01ad&oe=614B097E&_nc_sid=4f375e%20640w,")
user_6.photo.attach(io: file, filename: 'bike-shop6.jpg', content_type: 'image/jpg')
user_6.save!

# user_7 = User.create!(
#   email: "user7@test.com",
#   password: "123456",
#   mechanic: true,
#   location: "296-298 Brixton Road, SW9 6AG",
#   company_name: "Brixton Cycles",
#   insta_availability: false,
# )
  
# file = URI.open("https://res.cloudinary.com/dblr5mh56/image/upload/v1631371335/v74zeg9mjncppjsdrez1.jpg")
# user_7.photo.attach(io: file, filename: 'bike-shop7.jpg', content_type: 'image/jpg')
# user_7.save!

# user_8 = User.create!(
#   email: "user8@test.com",
#   password: "123456",
#   mechanic: true,
#   location: "49-53 Gray's Inn Road, London, WC1X 8PP",
#   company_name: "Condor Cycles",
#   insta_availability: false,
# )
  
# file = URI.open("https://res.cloudinary.com/dblr5mh56/image/upload/v1631371485/bfwjucy6yzujwt9ig8af.jpg")
# user_8.photo.attach(io: file, filename: 'bike-shop8.jpg', content_type: 'image/jpg')
# user_8.save!

# user_9 = User.create!(
#   email: "user9@test.com",
#   password: "123456",
#   mechanic: true,
#   location: "54 Earl’s Court Road, W8 6EJ",
#   company_name: "Cyclecare Kensington",
#   insta_availability: false,
# )
  
# file = URI.open("https://res.cloudinary.com/dblr5mh56/image/upload/v1631371692/oyn9gbl3nuqffy8bnrpb.jpg")
# user_9.photo.attach(io: file, filename: 'bike-shop9.jpg', content_type: 'image/jpg')
# user_9.save!

# user_10 = User.create!(
#   email: "user10@test.com",
#   password: "123456",
#   mechanic: true,
#   location: "37 Bermondsey St, Bermondsey, SE1 3JW",
#   company_name: "Fully Charged",
#   insta_availability: false,
# )
  
# file = URI.open("https://res.cloudinary.com/dblr5mh56/image/upload/v1631371972/umg89fffdxbfs38updqn.jpg")
# user_10.photo.attach(io: file, filename: 'bike-shop10.jpg', content_type: 'image/jpg')
# user_10.save!

# user_11 = User.create!(
#   email: "user11@test.com",
#   password: "123456",
#   mechanic: true,
#   location: "69 The Cut, London SE1 8LL",
#   company_name: "Big Bad Bikes",
#   insta_availability: false,
# )
  
# file = URI.open("https://res.cloudinary.com/dblr5mh56/image/upload/v1631372101/vfua5iyyexegf3s0zht6.png")
# user_11.photo.attach(io: file, filename: 'bike-shop11.png', content_type: 'image/jpg')
# user_11.save!

# user_12 = User.create!(
#   email: "user12@test.com",
#   password: "123456",
#   mechanic: true,
#   location: "97-99 Clerkenwell Rd, London EC1R 5BX",
#   company_name: "Raleigh Bikes",
#   insta_availability: false,
# )

# file = URI.open("https://res.cloudinary.com/dblr5mh56/image/upload/v1631372209/fio4t2nydych8f5dkj2w.png")
# user_12.photo.attach(io: file, filename: 'bike-shop12.png', content_type: 'image/jpg')
# user_12.save!

# user_13 = User.create!(
#   email: "user13@test.com",
#   password: "123456",
#   mechanic: true,
#   location: "41 Cropley St, London N1 7HT",
#   company_name: "CycleCrazy",
#   insta_availability: false,
# )
  
# file = URI.open("https://res.cloudinary.com/dblr5mh56/image/upload/v1631372395/mshbxlafysad4tynk7r1.jpg")
# user_13.photo.attach(io: file, filename: 'bike-shop13.jpg', content_type: 'image/jpg')
# user_13.save!

# user_14 = User.create!(
# email: "user14@test.com",
# password: "123456",
# mechanic: true,
# location: "125 St John's Hill, London SW1 1SZ",
# company_name: "London Race Bikes",
# insta_availability: false,
# )
  
# file = URI.open("https://res.cloudinary.com/dblr5mh56/image/upload/v1631372701/dr4cmfaz9mdaqghhaghd.jpg")
# user_14.photo.attach(io: file, filename: 'bike-shop14.jpg', content_type: 'image/jpg')
# user_14.save!

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
  price: 30,
  user: user_4,
)
service_4_2 = Service.create!(
  repair_name: "Inner Tube Fix",
  sku: "Inner Tube Fix",
  price: 10,
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

# Bookings & Chatroom creation

booking_2_1 = Booking.create!(
  user: user_1,
  service: service_2_1,
  booking_location: "138 Kingsland Rd, London E2 8DY",
  comment: "Front tyre puncture",
)
Chatroom.create!(booking: booking_2_1)
Order.create!(user: user_1, service: service_2_1)

booking_3_1 = Booking.create!(
  user: user_1,
  service: service_3_1,
  booking_location: "138 Kingsland Rd, London E2 8DY",
  comment: "Front tyre puncture",
)
Chatroom.create!(booking: booking_3_1)
Order.create!(user: user_1, service: service_3_1)

booking_4_1 = Booking.create!(
  user: user_1,
  service: service_4_1,
  booking_location: "138 Kingsland Rd, London E2 8DY",
  comment: "Front tyre puncture",
)
Chatroom.create!(booking: booking_4_1)
Order.create!(user: user_1, service: service_4_1)

booking_5_1 = Booking.create!(
  user: user_1,
  service: service_5_1,
  booking_location: "138 Kingsland Rd, London E2 8DY",
  comment: "Front tyre puncture",
)
Chatroom.create!(booking: booking_5_1)
Order.create!(user: user_1, service: service_5_1)


booking_6_1 = Booking.create!(
  user: user_1,
  service: service_6_1,
  booking_location: "138 Kingsland Rd, London E2 8DY",
  comment: "Front tyre puncture",
)
Chatroom.create!(booking: booking_6_1)
Order.create!(user: user_1, service: service_6_1)

# Reviews creation

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

review_5_2 = Review.create!(
  booking: booking_5_1,
  rating: 2,
  content: 'Great product and fast delivery'
)

review_6_1 = Review.create!(
  booking: booking_6_1,
  rating: 5,
  content: "genuinely impressed"
)

# review_4_2 = Review.create!(
#   booking: booking_3_1,
#   rating: 5,
#   content: '10/10 loved'
# )
# review_5_1 = Review.create!(
#   booking: booking_3_1,
#   rating: 2,
#   content: 'Very fast, recomend Trusted 100%'
# )
# review_5_2 = Review.create!(
#   booking: booking_3_1,
#   rating: 5,
#   content: 'such a fantastic service I was blown away'
# )

# review_6_1 = Review.create!(
#   booking: booking_3_1,
#   rating: 5,
#   content: 'Excelent value for money faster deliverys'
# )


puts "Created #{User.count} users"
puts "Created #{Service.count} services"
puts "Created #{Booking.count} bookings"
puts "Created #{Review.count} reviews"
puts "Created #{Chatroom.count} chatrooms"
