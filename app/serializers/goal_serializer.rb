class GoalSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :goal_objective, :goal_details, :goal_achieved
end
