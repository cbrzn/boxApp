class GuestsController < ApplicationController
    before_action :load_training,  only: [:create]

    def new
      @guest = Guest.new
      @training = Training.find(params[:training_id])
      @guest.training_id
    end

    def create
      @guest = @training.guests.build(guest_params)
      if @guest.save
        flash[:success] = "Invitacion realizada"
        redirect_to trainings_path
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
      redirect_to trainings_path
    end

  private
    def guest_params
      params.require(:guest).permit(:user_id, :training_id, :name, :ci)
    end

    def load_training
      @training = Training.find(params[:training_id])
    end
  end
