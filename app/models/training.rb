class Training < ApplicationRecord
  has_many :users, through: :bookings
  has_many :bookings

  def training_slots
  end
end
