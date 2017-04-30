class Training < ApplicationRecord
  has_many :guests
  has_many :users, through: :bookings
  has_many :bookings

  def can_book?
    bookings.count < cantidad
  end

  def left_slots
    cantidad - bookings.count
  end
end
