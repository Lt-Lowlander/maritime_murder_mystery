class Api::V1::FactionsController < ApiController
  skip_before_action :verify_authenticity_token
  before_action :authenticate_user!

  def index
    factions = Faction.all.order(id: :asc)
    render json: factions
  end

  def show
    fac = Faction.where(id: params[:id])
    render json: fac, include: ["users"]
  end

end
