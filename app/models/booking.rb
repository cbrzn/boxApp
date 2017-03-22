class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :training
  validates :user_id, presence: true
  validates :training_id, presence: true
  validate :training_not_full?, on: :create

  def reset_bookings
    @bookings = Booking.all
    if Time.now.hour == 23
      @bookings.delete_all
    end
  end



private

  def training_not_full?
    errors.add(:base, :full, message: "Clase llena. Trate otra hora")
    unless
      training.can_book?
  end

end
