class TrainingsController < ApplicationController

  def show
    @training = Training.find(params[:id])
  end

  def index
    @trainings = Training.all
  end
end
