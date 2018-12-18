class Api::V1::UsersController < ApiController

  skip_before_action :verify_authenticity_token
  before_action :authenticate_user!, except: [:index, :show]

  def index
    users = User.all.order(id: :asc)
    render json: users
  end

  def show
    user = User.where(id: params[:id])
    render json: user
  end
end
