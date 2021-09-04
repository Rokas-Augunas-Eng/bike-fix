class Service < ApplicationRecord
  belongs_to :user
  has_many :bookings

  monetize :price_cents

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

  def assign_image
    service = Service.find(id)
    if service.sku == "Tyre Fitting (Per Wheel)"
      "../app/assets/mechanic_logo_jpg"
    end
  end
end
