class StaticPagesController < ApplicationController
  def home
      if logged_in?
        @wod = current_user.wods.build
        @feed_items = current_user.feed
    end
  end

  def contact
  end

  def about
  end
end
