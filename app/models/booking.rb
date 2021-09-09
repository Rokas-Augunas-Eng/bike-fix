class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :service
  has_many :reviews
  has_many_attached :photos, dependent: :destroy

end
