class RequestsController < ApplicationController
  def create
    goal = Goal.find_by_id(session[:goal_id])
    participants = goal.users
    requester_ids = goal.requests.pluck(:user_id)

    if !participants.include?(current_user) && !requester_ids.include?(current_user.id)
      Request.create(goal_id: session[:goal_id], user_id: current_user.id, status_id: 1)
    end
    redirect_to :back
  end
end
