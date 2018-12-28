class Api::V1::NotesController < ApiController
  skip_before_action :verify_authenticity_token
  before_action :authenticate_user!, except: [:index]

  def index
    # trodden_trail = request.referrer
    # if trodden_trail = "http://localhost:3000/users/#{:id}/notes"
    #   binding.pry
    # end
    # paved_path = request.referrer
    # if paved_path = "http://localhost:3000/users/#{:id}"
    #   binding.pry
    # end
    beacon = params.permit(:user_id)
    if beacon.values[0].to_i == current_user.id
      notepad = {
        notes: PlayerNote.where(user_id: params[:user_id]),
        inspector: current_user.id,
        clearance: "character"
      }
      render json: notepad
    else
      notepad = {
        notes: [],
        inspector: "",
        clearance: "gumshoe"
      }
      render json: notepad
    end
  end

  def create
    note = PlayerNote.new(clue_params)
    if note.save
        notes = PlayerNote.where(user_id: params[:user_id])
      render json: notes
    else
      payload = { errors: note.errors.full_messages }
      render json: payload
    end
  end

private
def clue_params
  params.permit(:note_contents, :subject_id, :note, :user_id)
end


end
