class HomeController < ApplicationController
  def index
  end
  def search
  	@user = User.where(username: params[:query]).first
  	if @user 
  		
  	else
  		redirect_to 
  	end

  end
end
