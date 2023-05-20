class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :moped
  validates :start_date, presence: true
  validates :end_date, presence: true
  validate :start_before_end

  def start_before_end
    if start_date > end_date
      errors.add(:start_date, "Start date cannot be later than end date.")
    end
  end
end
