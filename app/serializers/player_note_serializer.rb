class PlayerNoteSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :note_contents, :subject_id
end
