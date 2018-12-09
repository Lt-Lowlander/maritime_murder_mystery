class PlayerNoteSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :note_contents, :subject_id
end
