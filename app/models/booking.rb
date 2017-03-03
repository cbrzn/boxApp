class Booking < ApplicationRecord
  belongs_to  :booker,    class_name: "User"
  belongs_to  :booked,    class_name: "Training"
  validates :booker_id,   presence: true
  validates :booked_id,   presence: true
end
