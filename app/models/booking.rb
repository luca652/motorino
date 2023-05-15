class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :moped
  validates :start_date, :end_date, presence: true
end
