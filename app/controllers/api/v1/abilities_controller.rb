class Api::V1::AbilitiesController < ApiController
  skip_before_action :verify_authenticity_token
  before_action :authenticate_user!

  def index
    beacon = params.permit(:user_id)
    if beacon.values[0].to_i == current_user.id
      char_abils = {
        abilities: Ability.where(user_id: params[:user_id]),
        clearance: "character"
      }
      render json: char_abils
    else
      char_abils = {
        abilities: [],
        clearance: "gumshoe"
      }
      render json: char_abils
    end
  end

  def update
    edited_ability = Ability.where(user_id: params[:user_id], id: params[:id])
    if edited_ability.update(abil_dets)
      abilities = Ability.where(user_id: params[:user_id])
      render json: abilities
    else
      render json: {errors: edited_ability.errors}
    end
  end

  private
  def abil_dets
    params.permit(:id, :quant_used, :quant_left)
  end

end
