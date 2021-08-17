class Review < ApplicationRecord
  belongs_to :mechanic
  belongs_to :booking
end
