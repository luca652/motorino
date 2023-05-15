class Moped < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings
  validates :name, :color, :description, :price, :n_of_passengers, presence: true
end
