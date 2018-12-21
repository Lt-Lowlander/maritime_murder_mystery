class Api::V1::NarrativesController < ApiController

  skip_before_action :verify_authenticity_token
  before_action :authenticate_user!, except: [:index]

  def index
    if current_user
      viewer = "onboard"
    else
      viewer = "overboard"
    end
    narrative_payload = {
      viewer: viewer,
      narratives: Narrative.all.order(id: :desc)
    }
    render json: narrative_payload
  end

end
