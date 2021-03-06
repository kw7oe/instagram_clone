class CommentsController < ApplicationController

	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments.create(comment_params)
		@comment.user_id = params[:user_id]
		@comment.save
		respond_to do |format|
			format.html { redirect_to root_url }
			format.js
		end
	end

	def destroy		
		@comment = Comment.find(params[:id])
		@post = Post.find(@comment.commentable_id) # post_id for AJAX response
		@comment.destroy
		respond_to do |format|
			format.html { redirect_to root_url }
			format.js
		end
	end

	private
	def comment_params
		params.require(:comment).permit(:comment)
	end
end
