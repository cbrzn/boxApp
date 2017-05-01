class RmsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  before_action :load_user, only: [:create, :destroy]

  def new
    @rm = Rm.new
    @user = User.find(params[:user_id])

  end

  def create
    @rm = @user.rms.build(rms_params)
    if @rm.save
      flash[:success] = "RM creado"
      redirect_to user_rms_path
    else
      render 'new'
    end
  end

  def index
    @rms = Rm.where(user_id: params[:user_id])
  end

  def destroy
    @user = User.find(params[:user_id])
    Rm.find(params[:id]).destroy
    flash[:success] = "RM eliminado"
    redirect_to user_rms_path
  end


  private
    def rms_params
      params.require(:rm).permit(:user_id, :content, :quantity)
    end

    def load_user
      @user = User.find(params[:user_id])
    end
  end
