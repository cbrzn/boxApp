class BookingsController < ApplicationController


  def create
      training = Training.find(params[:booker_id])
      current_user.book(training)
      flash[:success] = "Reservacion realizada"
      redirect_to training_index_url
  end

  def destroy
      training = Booking.find(params[:id]).booked
      current_user.unbook(training)
      flash[:success] = "Reservacion eliminada"
      redirect_to training_index_url
  end
end
