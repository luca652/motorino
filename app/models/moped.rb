class Moped < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings
  validates :name, :color, :description, :price, :n_of_passengers, :address, presence: true
  has_one_attached :image
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
