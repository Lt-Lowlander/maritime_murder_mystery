class Premise < ApplicationRecord
  validates :content, :heading, presence: true
end
