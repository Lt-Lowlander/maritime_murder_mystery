class Api::V1::ConnectionsController < ApiController
  skip_before_action :verify_authenticity_token
  before_action :authenticate_user!

  def index
    beacon = params.permit(:user_id)
    if beacon.values[0].to_i == current_user.id
      connections = {
        others: OtherPerson.where(user_id: params[:user_id]),
        tips: BeginnerTip.where(user_id: params[:user_id]),
        clearance: "character"
        }
        render json: connections
    else
      connections = {
        others: "",
        tips: "",
        clearance: "gumshoe"
        }
        render json: connections
    end
  end

end
