class Api::GoalsController < ApplicationController
  def index
    render json: Goal.all
  end
end
