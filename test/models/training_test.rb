require 'test_helper'

class TrainingTest < ActiveSupport::TestCase
  def setup
    @training = Training.new(hora: "7:00am - 8:00am", cantidad: 24)
  end

  test "should be valid" do
    assert @training.valid?
  end
end
