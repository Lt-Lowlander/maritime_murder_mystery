class PlayerNote < ApplicationRecord
  belongs_to :user
  validates :note_contents, :subject_char, presence: true
  validates :subject_id, numericality: { greater_than_or_equal_to: 1 }
end
