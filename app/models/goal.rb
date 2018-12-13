class Goal < ApplicationRecord
  belongs_to :user
  validates :goal_objective, :goal_details, presence: true
  validates :goal_achieved, numericality: { greater_than_or_equal_to: 0 }
end
