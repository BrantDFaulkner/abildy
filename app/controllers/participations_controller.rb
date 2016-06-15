class ParticipationsController < ApplicationController

  def create
    Participation.create(user_id: params[:request_user_id].to_i, goal_id: session[:goal_id])
    Request.find_by_id(params[:request_id].to_i).update(status_id: 2)
    redirect_to :back
  end

end