class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def show
		@id = params[:id]
		@current_user = User.find(@id)
		# Typically we would just write
		# @user = User.find(params[:id])
	end

	def destroy
		@user = User.find(params[:id])
		if @user.destroy
			flash[:notice] = "User deleted successfully."
		else 
			flash[:alert] = "There was a problem deleting this user."
		end
		redirect_to users_path
	end


end
