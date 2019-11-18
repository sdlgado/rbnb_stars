class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :star_part
end
