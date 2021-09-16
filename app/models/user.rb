class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  
  has_many :bookings
  has_many :services
  has_many :orders
  has_one_attached :photo

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  def average_rating
    sum = 0 
    counter = 0 
    mechanic_bookings = Booking.select {|booking| booking.service.user == self }
    mechanic_bookings.each do |booking|
      if booking.reviews.present?
        sum += booking.reviews.first.rating
        counter += 1
      end
    end
    (sum.to_f / counter) if counter > 0
  end

end
