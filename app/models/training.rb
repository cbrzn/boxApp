class Training < ApplicationRecord
  has_many :users, through: :bookings
  has_many :bookings
end
