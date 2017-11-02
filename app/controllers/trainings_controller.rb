class TrainingsController < ApplicationController
  before_action :load_box , only: [:create]

  def new
    @training = Training.new
    @box = Training.find(params[:box_id])
    @training.box_id
  end

  def create
    @training = @box.trainings.build(training_params)
    @training.save
  end

  def show
    @training = Training.find(params[:id])
    @box = Box.find(params[:box_id])
  end

  def index
    @box = Box.find(params[:box_id])
    @trainings = Training.where(box_id: params[:box_id])
  end


  private
    def training_params
      params.require(:training).permit(:box_id)
    end

    def load_box
      @box = Box.find(params[:box_id])
    end
end
