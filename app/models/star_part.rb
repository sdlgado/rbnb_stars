class StarPart < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings, dependent: :destroy
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }, numericality: { only_integer: true }
  validates :category, inclusion: { in: ["sand", "tree", "sea"] }, presence: true
  validates :name_of_star, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validate :active_star_part
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # private
  # def main_picture_cloudinary
  #   return unless photo.attached?
  #   return if photo.key.nil?
  #   errors.add(:main_picture, 'needs to be an image')
  # end

  include PgSearch # search_bar
  pg_search_scope :search,
    against: [ :name_of_star, :name_of_part, :category, :address ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

  def active_star_part
    if photo.attached? == false
      errors.add(:photo, "is not active")
    else
    end
  end

  def unavailable_dates
    range = []
    bookings.each do |booking|
      date = booking.start_date
      while date != booking.end_date.next_day
        range << date
        date = date.next_day
      end
    end

    return range.uniq.map do |date|
      month = date.month.to_s.length == 2 ? "#{date.month}" : "0#{date.month}"
      day = date.day.to_s.length == 2 ? "#{date.day}" : "0#{date.day}"
      "#{date.year}-#{month}-#{day}"
    end
  end
end
