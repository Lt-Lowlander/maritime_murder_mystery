class Api::V1::FactionsController < ApiController
  skip_before_action :verify_authenticity_token
  before_action :authenticate_user!, except: [:index]

  def index
    factions = Faction.all
    render json: factions, include: ["users"]
  end

end
