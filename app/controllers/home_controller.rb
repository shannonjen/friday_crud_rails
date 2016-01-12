class HomeController < ApplicationController
  def index
  end
  def search
  	@users = User.where(username: params[:query])
    if @users

    else
      render :index
    end
  end
end
