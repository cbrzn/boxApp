class Booking < ApplicationRecord
  belongs_to  :ci,        class_name: "User"
  belongs_to  :hora,      class_name: "Training"
  validates   :User_id,     presence: true
  validates   :Training_id, presence: true

  
end
