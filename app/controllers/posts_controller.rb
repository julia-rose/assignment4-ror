class PostsController < ApplicationController
	def index
		@user_id = params[:user_id]
		@current_user = User.find(@user_id)
		@posts = @current_user.posts
	end
end