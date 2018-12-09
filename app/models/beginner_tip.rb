class BeginnerTip < ApplicationRecord
  belongs_to :user
  validates :advice, presence: true
end
