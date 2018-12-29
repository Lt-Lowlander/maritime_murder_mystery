class Api::V1::BackgroundController < ApiController
  skip_before_action :verify_authenticity_token
  before_action :authenticate_user!

  def index
    beacon = params.permit(:user_id)
    if beacon.values[0].to_i == current_user.id
      background = {
        char_story: CharStory.where(user_id: params[:user_id]),
        clearance: "character"
        }
        render json: background
    else
      background = {
        char_story: "",
        clearance: "gumshoe"
        }
        render json: background
    end
  end

end
