class UsersController < ApplicationController
	before_action :authenticate_admin

	def index
		@users = User.all
	end

	def new

	end

	def edit
	end

	def show
		@user = User.find(params[:id])
	end

	def handle_promotion
		user = User.find(params[:user_id])
		user.update(is_admin: !@user.is_admin)
		redirect_to users_path
	end

	def update
	end

	def destroy
		user = User.find(params[:id])
		user.destroy
		return redirect_to users_path, notice: "One user is deleted"
	end

	private 

	def authenticate_admin
		if current_user.is_admin? == false
			redirect_to root_path, :notice => "You are not allowed to perform this action."
		end
	end	

end
