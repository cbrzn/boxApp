class WodsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

  def new
    @wod = Wod.new
    @box = Box.find(params[:box_id])
  end

  def create
    @wod = current_user.wods.build(wod_params)
    @wod.box = Box.find(params[:box_id])
    if @wod.save
      flash[:success] = "Wod creado"
      redirect_to box_wods_path
      else
      render 'new'
    end
  end

  def index
    @wod = Wod.where(box_id: params[:box_id])
  end

  def edit
    @box = Box.find(params[:box_id])
    @wod = Wod.find(params[:id])
  end

  def update
    @wod = Wod.find(params[:id])
    @box = Box.find(params[:box_id])
    if @wod.update_attributes(wod_params)
      flash[:success] = "Wod actualizado"
      redirect_to box_wods_path
      else
      render 'edit'
    end
  end

  def show
    @wod = Wod.this_day
  end

  def destroy
    @box = Box.find(params[:box_id])
    Wod.find(params[:id]).destroy
    flash[:success] = "Wod eliminado"
    redirect_to box_wods_path
  end


  private
    def wod_params
      params.require(:wod).permit(:wday, :content, :warmup, :inbetween,
                                  :warmupone, :warmuptwo, :warumupthree,
                                  :warmupfour, :warmupfive, :warmupsix,
                                  :skillone, :skilltwo, :skillthree,
                                  :skillfour, :skillfive, :skillsix,
                                  :wodmode, :wodone, :wodtwo,
                                  :wodthree, :wodfour, :wodfive, :wodsix,
                                  :wodseven, :wodeight, :wodnine, :wodten,
                                  :wodeleven, :wodtwelve, :wodthirteen,
                                  :wodfourteen, :wodfifteen, :box_id)
    end

end
