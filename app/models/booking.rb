class Booking < ApplicationRecord
  has_many :reviews, dependent: :destroy
  belongs_to :user
  belongs_to :star_part
  validates :start_date, presence: true
  validates :end_date, presence: true
  validate :end_date_after_start_date
  validate :do_not_contain_unavailable_dates, on: :create

  def confirm
    self.confirmed = "Accepted"
  end

  def refuse
    self.confirmed = "Declined"
  end

  private

  def end_date_after_start_date
    return if end_date.blank? || start_date.blank?
    if end_date < start_date
      errors.add(:end_date, "must be after the start date")
    end
  end

  def do_not_contain_unavailable_dates
    star_part = StarPart.find(self.star_part_id)
    unavailable = star_part.unavailable_dates
    range = []
    date = start_date
    while date != end_date.next_day
      range << date
      date = date.next_day
    end

    range = range.uniq.map do |booking_date|
      month = booking_date.month.to_s.length == 2 ? "#{booking_date.month}" : "0#{booking_date.month}"
      day = booking_date.day.to_s.length == 2 ? "#{booking_date.day}" : "0#{booking_date.day}"
      "#{booking_date.year}-#{month}-#{day}"
    end
    answer = true
    range.each { |d| answer &&= !unavailable.include?(d) }
    return if end_date.blank? || start_date.blank?
    if !answer
      errors.add(:end_date, "the period you chose contains unavailable dates")
    end
  end
end
