  require 'test_helper'

  class BookingTest < ActiveSupport::TestCase

    def setup
      @user = users(:cesar)
      @training = trainings(:one)
      @booking = @user.bookings.build(training: @training)
    end



  end
