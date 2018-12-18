class Narrative < ApplicationRecord
  validates :content, :heading, presence: true
end
