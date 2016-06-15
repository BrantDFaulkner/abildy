class RequestsController < ApplicationController
  def create
    Request.create(goal_id: session[:goal_id], user_id: current_user.id, status_id: 1)
    redirect_to :back
  end
end
