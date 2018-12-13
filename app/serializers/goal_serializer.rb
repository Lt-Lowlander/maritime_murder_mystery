class GoalSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :goal_objective, :goal_details, :goal_achieved
end
