class StaticPagesController < ApplicationController
  def home
#		@micropost = current_user.microposts.build if signed_in?
#		@feed_items = current_user.feed.paginate(page: params[:page])

		if signed_in?
			@micropost  = current_user.microposts.build
			@feed_items = current_user.feed.paginate(page: params[:page])
		end
  end

  def help
  end

  def about
  end

  def contact
  end
end
