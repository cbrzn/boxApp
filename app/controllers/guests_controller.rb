class GuestsController < ApplicationController
    before_action :load_training,  only: [:create]

    def new
      @box = Box.find(params[:box_id])
      @guest = Guest.new
      @training = Training.find(params[:training_id])
      @guest.training_id
    end

    def create
      @guest = @training.guests.build(guest_params)
      @guest.user = current_user
      @training.box_id
      if @guest.save
        flash[:success] = "Invitacion realizada"
        redirect_to box_training_bookings_path
      else
        render 'new'
      end
    end

    def index
      @guests = Guest.where(training_id: params[:training_id])
    end


    def destroy
      @guest = Guest.find(params[:id])
      @guest.destroy
      flash[:success] = "Invitacion cancelada"
      redirect_to box_training_bookings_path
    end

  private
    def guest_params
      params.require(:guest).permit(:user_id, :training_id, :name, :ci)
    end

    def load_training
      @training = Training.find(params[:training_id])
    end
  end
