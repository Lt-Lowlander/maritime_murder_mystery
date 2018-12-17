class Api::V1::PremisesController < ApiController

  skip_before_action :verify_authenticity_token
  before_action :authenticate_user!

  def index
    premises = Premise.all.order(id: :desc)
    render json: premises
  end

end
