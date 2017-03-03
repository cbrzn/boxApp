class Training < ApplicationRecord
  has_many :passive_bookings, class_name:  "Booking",
                              foreign_key: "booked_id",
                              dependent:   :destroy
  has_many :reservers, through: :passive_bookings, source: :booker
end
