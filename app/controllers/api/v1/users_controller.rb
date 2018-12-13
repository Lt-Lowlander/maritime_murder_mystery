class Api::V1::UsersController < ApiController

  skip_before_action :verify_authenticity_token
  before_action :authenticate_user!, except: [:index, :show]

  def index
    users = User.where(faction_id: params[:faction_id]).order(id: :asc)
    render json: users
  end

end
