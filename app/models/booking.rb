class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :service
  has_many :reviews
  has_many_attached :photos, dependent: :destroy
  geocoded_by :booking_location
  after_validation :geocode, if: :will_save_change_to_booking_location?
end
