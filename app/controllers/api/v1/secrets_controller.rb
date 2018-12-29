class Api::V1::SecretsController < ApiController
  skip_before_action :verify_authenticity_token
  before_action :authenticate_user!

  def index
    beacon = params.permit(:user_id)
    if beacon.values[0].to_i == current_user.id
      secret = {
        char_secret: CharSecret.where(user_id: params[:user_id]),
        char_info: CharInfo.where(user_id: params[:user_id]),
        clearance: "character"
        }
        render json: secret
    else
      secret = {
        char_secret: "",
        char_info: "",
        clearance: "gumshoe"
        }
        render json: secret
    end
  end

end
