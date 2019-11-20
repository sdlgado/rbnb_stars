class StarPart < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }, numericality: { only_integer: true }
  validates :category, inclusion: { in: ["head", "bust", "bottom"] }
  # validate :main_picture_cloudinary
  validate :active_star_part
  has_one_attached :photo

  # private
  # def main_picture_cloudinary
  #   return unless photo.attached?
  #   return if photo.key.nil?
  #   errors.add(:main_picture, 'needs to be an image')
  # end
  def active_star_part
    if photo.attached? == false
      errors.add(:photo, "is not active")
    else
    end
  end
end
