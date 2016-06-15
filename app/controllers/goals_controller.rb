class GoalsController < ApplicationController

  def index
    @goals = Goal.all.includes(:category, :admin)
  end

  def new
    @goal = Goal.new
    @categories = Category.all
  end

  def create
    # current_user.goals.create(title: params[:goal][:title], description: params[:goal][:description], category_id: params[:goal][:category_id])
    current_user.goals.create(goal_params)

    redirect_to goals_path
  end

  def show
    @goal = Goal.find_by_id(params[:goal_id])
    @admin = @goal.admin
    @category = @goal.category
  end

private

  def goal_params
    params.require(:goal).permit(:title, :description, :category_id)
  end


end
