class SessionsController < ApplicationController
	def new

	end

	def create
		puts params.inspect
		@user = User.where(username: params[:username]).first
		if @user && @user.password == params[:password]
			session[:user_id] = @user.id
			redirect_to root_path
		else
			redirect_to log_in_path
		end

	end

	def destroy

	end
end
