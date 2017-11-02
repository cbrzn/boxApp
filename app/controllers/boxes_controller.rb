class BoxesController < ApplicationController

  def index
    @box = Box.all
  end

  def show
    @box = Box.find(params[:id])
    @trainings = @box.trainings.paginate(page: params[:page])
    @wods = @box.wods.paginate(page: params[:page])
  end
end
