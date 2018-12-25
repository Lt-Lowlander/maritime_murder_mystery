class Api::V1::GoalsController < ApiController
  skip_before_action :verify_authenticity_token
  before_action :authenticate_user!

def index
  goals = Goal.where(user_id: params[:user_id]).order(id: :asc)
  render json: goals
end

  def update
    edited_goal = Goal.where(user_id: params[:user_id], id: params[:id])
    if edited_goal.update(goal_details)
      goals = Goal.where(user_id: params[:user_id]).order(id: :asc)
      render json: goals
    else
      render json: {errors: edited_goal.errors}
    end
  end

  private
  def goal_details
    params.permit(:id, :goal_achieved)
  end

end
