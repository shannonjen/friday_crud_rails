class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end

	def new
		@user = User.new
	end

	def create

	end

	def edit

	end

	def update

	end

	def destroy
		@user = User.find(params[:id])
		if @user.destroy

		else

		end
		redirect_to users_path

	end
end
