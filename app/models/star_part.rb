class StarPart < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }, numericality: { only_integer: true }
  validates :category, inclusion: { in: ["head", "bust", "bottom"] }
end
