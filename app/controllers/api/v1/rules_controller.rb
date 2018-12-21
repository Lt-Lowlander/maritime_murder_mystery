class Api::V1::RulesController < ApiController

  skip_before_action :verify_authenticity_token
  before_action :authenticate_user!, except: [:index]

  def index
    if current_user
      viewer = "onboard"
      rules_payload = {
        viewer: viewer,
        rules: GameRule.all.order(id: :desc)
      }
      render json: rules_payload
    else
      viewer = "overboard"
      rules_payload = {
        viewer: viewer,
        rules: []
      }
      render json: rules_payload
    end
  end

end
