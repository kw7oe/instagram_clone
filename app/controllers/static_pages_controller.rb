class StaticPagesController < ApplicationController
  def home  	
	  @posts = []
  	if current_user
	  	@posts = Post.where("user_id IN (?) OR user_id = ?", current_user.following_ids, current_user.id)
	  	@posts = @posts.order('created_at DESC')
	  end
  end
end
