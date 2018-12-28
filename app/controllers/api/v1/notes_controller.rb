class Api::V1::NotesController < ApiController
  skip_before_action :verify_authenticity_token
  before_action :authenticate_user!, except: [:index]

  # trodden_trail = request.referrer
  # if trodden_trail = "http://localhost:3000/users/#{:id}/notes"
  # end
  def index
    beacon = params.permit(:user_id)
    if beacon.values[0].to_i == current_user.id
      notepad = {
        notes: PlayerNote.where(user_id: params[:user_id]),
        clearance: "character"
      }
      render json: notepad
    else
      notepad = {
        notes: [],
        clearance: "gumshoe"
      }
      render json: notepad
    end
  end

end
