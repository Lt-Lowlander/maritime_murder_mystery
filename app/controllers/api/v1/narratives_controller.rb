class Api::V1::NarrativesController < ApiController

  skip_before_action :verify_authenticity_token
  before_action :authenticate_user!

  def index
    narratives = Narrative.all.order(id: :desc)
    render json: narratives
  end

end
