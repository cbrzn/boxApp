class TrainingController < ApplicationController

  def show
    @training = Training.find(params[:id])
  end
  def new
  end

  def index
    @trainings = Training.all
    end

end
