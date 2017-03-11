class TrainingsController < ApplicationController

  def show
    @training = Training.find(params[:id])
    @bookings = @training.bookings
  end

  def index
    @trainings = Training.all
  end
end
