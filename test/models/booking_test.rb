require 'test_helper'

class BookingTest < ActiveSupport::TestCase
  def setup
    @booking = Booking.new(User_id:     users(:cesar).id,
                           Training_id: trainings(:one).id)
  end

  test "should be valid" do
    assert_not @booking.valid?
  end

  test "should require a user_id" do
    @booking.User_id = nil
    assert_not @booking.valid?
  end

  test "should require a training_id" do
    @booking.Training_id = nil
    assert_not @booking.valid?
  end
end
