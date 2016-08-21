class StaticPagesController < ApplicationController
  def home  	
	  @feeds = []
  	if current_user
	  	@feeds = Post.where("user_id IN (?) OR user_id = ?", current_user.following_ids, current_user.id)
	  	@feeds = @feeds.order('created_at DESC')
	  end
  end
end
