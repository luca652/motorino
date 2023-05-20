class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :moped
  validates :start_date, presence: true
  validates :end_date, presence: true
  validate :start_before_end

  private

  def start_before_end
    return if end_date.blank? || start_date.blank?

    errors.add(:start_date, " cannot be later than end date.") if start_date > end_date
  end
end
