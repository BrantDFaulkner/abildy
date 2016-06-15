class GoalsController < ApplicationController

  def index
    @goals = Goal.all.includes(:category, :admin)
  end

  def new
    @goal = Goal.new
    @categories = Category.all
  end

  def create
    goal = current_user.goals.create(goal_params)
    current_user.participations.create(goal_id: goal.id)
    redirect_to goals_path
  end

  def show
    @goal = Goal.find_by_id(params[:goal_id])
    @admin = @goal.admin
    @category = @goal.category
    session[:goal_id] = @goal.id

    @requests = @goal.requests.where(status: 1)
    @users = @goal.users
  end

private

  def goal_params
    params.require(:goal).permit(:title, :description, :category_id)
  end


end
