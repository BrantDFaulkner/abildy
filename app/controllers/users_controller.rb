class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.create :user_name => params["user"]["user_name"], :email => params["user"]["email"], :password => params["user"]["password"]
    session[:user_id] = user.id
    redirect_to root_path
  end

end
