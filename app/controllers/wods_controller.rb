class WodsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

  def new
    @wod = Wod.new
  end

  def create
    @wod = current_user.wods.build(wod_params)
    if @wod.save
      flash[:success] = "WOD creado"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def index
    @wods = Wod.all
  end

  def edit
    @wod = Wod.find(params[:id])
  end

  def update
    @wod = Wod.find(params[:id])
    if @wod.update_attributes(wod_params)
      flash[:success] = "Wod actualizado"
      redirect_to root_url
      else
      render 'edit'
    end
  end

  def destroy
    Wod.find(params[:id]).destroy
    flash[:success] = "Wod eliminado"
    redirect_to root_url
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
                                  :wodfourteen, :wodfifteen)
    end
end
