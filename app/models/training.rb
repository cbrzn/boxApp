class Training < ApplicationRecord
  has_many :users, through: :bookings
  has_many :bookings
  has_many :guests
  belongs_to :box

  def can_book?
    bookings.count < cantidad
  end

  def left_slots
    cantidad - bookings.count
  end

  def can_invite?
    guests.count < guestslot
  end

  def left_guestslot
    guestslot - guests.count
  end

end
