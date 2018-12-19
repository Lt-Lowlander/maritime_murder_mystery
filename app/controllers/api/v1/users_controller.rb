class Api::V1::UsersController < ApiController

  skip_before_action :verify_authenticity_token
  before_action :authenticate_user!, except: [:index, :show]

  def index
    if current_user && current_user.role == "admin"
      admin_payload = {
        viewer: current_user.id,
        users: User.all.order(id: :asc)
      }
      render json: admin_payload, include: ["faction", "abilities", "beginner_tips", "char_info", "char_secret", "char_story", "goals", "other_people", "player_notes"]
    else
      member_payload = {
        viewer: current_user.id,
        users: User.all.order(id: :asc)
      }
      render json: member_payload, include: ["faction"]
    end
  end

  def show
    beacon = params.permit(:id)
    if !current_user
      guest_payload = {
        viewer: "",
        patron: User.where(id: params[:id])
      }
      render json: guest_payload, include: ["faction"]
    elsif current_user && current_user.role == "member" && current_user.id != beacon.values[0].to_i
      member_payload = {
        viewer: current_user.id,
        patron: User.where(id: params[:id])
      }
      render json: member_payload, include: ["faction", "player_notes"]
    elsif (current_user.role == "member" && current_user.id == beacon.values[0].to_i) || current_user.role == "admin"
      ownership_payload = {
        viewer: current_user.id,
        patron: User.where(id: params[:id])
      }
      render json: ownership_payload, include: ["faction", "abilities", "beginner_tips", "char_info", "char_secret", "char_story", "goals", "other_people", "player_notes"]
    end
  end
end
