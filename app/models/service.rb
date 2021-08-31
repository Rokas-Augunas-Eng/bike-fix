class Service < ApplicationRecord
  belongs_to :user
  has_many :bookings

  def average_rating
    sum = 0 
    counter = 0 
    bookings.each do |booking|
      if booking.reviews.present?
        sum += booking.reviews.first.rating
        counter += 1
      end
    end
    (sum.to_f / counter) if counter > 0
  end
end
