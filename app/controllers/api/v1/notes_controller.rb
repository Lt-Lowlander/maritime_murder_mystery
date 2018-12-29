class Api::V1::NotesController < ApiController
  skip_before_action :verify_authenticity_token
  before_action :authenticate_user!, except: [:index]

  def index
    beacon = params.permit(:user_id)
    if beacon.values[0].to_i == current_user.id
      notepad = {
        notes: PlayerNote.where(author_id: params[:user_id]),
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
    note = PlayerNote.new(clues_dets)
    if note.save
      notes = PlayerNote.where(author_id: current_user.id, subject_id: params[:subject_id])
      render json: notes
    else
      payload = { errors: note.errors.full_messages }
      render json: payload
    end
  end



  private
  def clue_params
    params.permit(:note_contents, :subject_id, :author_id, :user_id)
  end

  def clues_dets
    beacon = params.permit(:subject_id)
    spec_num = beacon.values[0].to_i
    r = User.find_by(id: spec_num).attributes.slice('character')
    clue_params.merge(subject_char: r.values[0])
  end

end
