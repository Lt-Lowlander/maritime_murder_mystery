class PlayerNoteSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :author_id, :note_contents, :subject_id, :subject_char
end
