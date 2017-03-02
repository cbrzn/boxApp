class BookingsController < ApplicationController


  def new
    @training = Training.find(params[:Training_id])
    @booking = @training.bookings.new(booking_params)
    @booking.user = current_user
  end


  def create
      @training = Training.find(params[:Training_id])
      @booking = @training.bookings.new(booking_params)
      @booking.user = current_user
      if @booking.save
            flash[:success] = "Your place on our event has been booked"
            redirect_to training_path(@training)
        else
            flash[:error] = "Payment unsuccessful"
            render "new"
      end


  end

  private
  def booking_params
    params.require(:booking).permit(:Training_id, :User_id)
  end
end
