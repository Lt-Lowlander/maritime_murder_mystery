class Api::V1::RulesController < ApiController

  skip_before_action :verify_authenticity_token
  before_action :authenticate_user!

  def index
    rules = GameRule.all.order(id: :asc)
    render json: rules
  end

end
