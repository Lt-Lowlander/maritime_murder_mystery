class Api::V1::FactionsController < ApiController
  skip_before_action :verify_authenticity_token
  before_action :authenticate_user!, except: [:index]

  def index
    if current_user
      fac_payload = {
        viewer: "familiar",
        factions: Faction.all.order(id: :asc)
      }
      render json: fac_payload, include: ["users"]
    else
      fac_payload = {
        viewer: "stranger",
        factions: Faction.all.order(id: :asc)
      }
      render json: fac_payload, include: ["users"]
    end
  end

  # def show
  #   fac = Faction.where(id: params[:id])
  #   render json: fac, include: ["users"]
  # end

end
