class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params["email"]).try(:authenticate, params["password"])
    if user
      session[:user_id] = user.id
      redirect_to root_path
    else
      redirect_to new_session_path
    end
  end


  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end
