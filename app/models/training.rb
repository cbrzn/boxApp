class Training < ApplicationRecord
  has_many :users, through: :bookings
  has_many :bookings

  def can_book?
    bookings.count < cantidad
  end

  end
