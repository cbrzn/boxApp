require 'test_helper'

class BookingTest < ActiveSupport::TestCase
  require 'test_helper'

  class BookingTest < ActiveSupport::TestCase

    def setup
      @user = users(:cesar)
      @training = trainings(:one)
      @booking = @user.bookings.build(training: @training)
    end

    test "should be valid" do
      assert @booking.valid?
    end

    test "user id should be present" do
      @booking.user_id = nil
      assert_not @booking.valid?
    end

    test "training id should be present" do
      @booking.training_id = nil
      assert_not @booking.valid?
    end

    test "oder should be most recent first" do
      assert_equal bookings(:one), Booking.first
    end
  end

end
