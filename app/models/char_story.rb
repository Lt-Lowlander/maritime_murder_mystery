class CharStory < ApplicationRecord
  belongs_to :user
  validates :char_story, presence: true
end
