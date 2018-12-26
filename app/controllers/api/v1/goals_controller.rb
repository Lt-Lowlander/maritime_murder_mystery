class Api::V1::GoalsController < ApiController
  skip_before_action :verify_authenticity_token
  before_action :authenticate_user!

  def index
    beacon = params.permit(:user_id)
    if beacon.values[0].to_i == current_user.id
      goals_payload = {
        goals: Goal.where(user_id: params[:user_id]),
        clearance: "character"
      }
      render json: goals_payload
    else
      goals_payload = {
        goals: [],
        clearance: "gumshoe"
      }
      render json: goals_payload
    end
  end

  def update
    edited_goal = Goal.where(user_id: params[:user_id], id: params[:id])
    if edited_goal.update(goal_details)
      goals = Goal.where(user_id: params[:user_id]).order(created_at: :asc)
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
