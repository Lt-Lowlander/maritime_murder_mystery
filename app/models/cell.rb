class Cell < ApplicationRecord
  belongs_to :ability
  validates :consumed, numericality: { greater_than_or_equal_to: 0 }
end
