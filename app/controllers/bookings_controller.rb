class BookingsController < ApplicationController
  before_action :load_training,  only: [:create]

  def new
    @box = Box.find(params[:box_id])
    @booking = Booking.new
    @training = Training.find(params[:training_id])
    @booking.training_id
  end

  def create
    @booking = @training.bookings.build(booking_params)
    @booking.user = current_user
    @training.box_id
    if @booking.save
      flash[:success] = "Reservacion creada"
      redirect_to box_training_bookings_path
    else
      render 'new'
    end
  end

  def index
    @box = Box.find(params[:box_id])
    @guests = Guest.where(training_id: params[:training_id])
    @bookings = Booking.where(training_id: params[:training_id])
    @users = User.where(user_id: params[:user_id])
  end


  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    flash[:success] = "Reservacion eliminada"
    redirect_to box_training_bookings_path
  end

private
  def booking_params
    params.require(:booking).permit(:user_id, :training_id)
  end

  def load_training
    @training = Training.find(params[:training_id])
  end
end
