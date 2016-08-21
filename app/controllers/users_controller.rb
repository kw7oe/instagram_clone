class UsersController < ApplicationController
	before_action :set_user

	def show 
		@posts = @user.posts.order("created_at DESC")
	end

	def followers
		@users = @user.followers
		if @users.empty?
			redirect_to @user
		else 
			render 'show_follow'
		end
	end

	def following
		@users = @user.following
		if @users.empty?
			redirect_to @user
		else 			
			render 'show_follow'
		end
	end

	private 
	def set_user 
		@user = User.find(params[:id])
	end
	
end
