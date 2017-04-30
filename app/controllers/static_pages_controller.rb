class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @rm  = current_user.rms.build
    end
  end

  def contact
  end

  def about
  end
end
