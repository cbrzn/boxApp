class BookingsController < ApplicationController
  before_action :load_training,  only: [:create]

  def new
    @booking = Booking.new
    @training = Training.find(params[:training_id])
    @booking.training_id
  end

  def create
    @booking = @training.bookings.build(booking_params)
    @booking.user = current_user

    if @booking.save
      flash[:success] = "Reservacion creada"
      redirect_to trainings_path
    else
      render 'new'
    end
  end


  def index
    @booking = Booking.all
  end


  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    flash[:success] = "Reservacion eliminada"
    redirect_to trainings_path
  end



private
  def booking_params
    params.require(:booking).permit(:user_id, :training_id)
  end

  def load_training
    @training = Training.find(params[:training_id])
  end

end
