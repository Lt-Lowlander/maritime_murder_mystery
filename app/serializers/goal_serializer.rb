class GoalSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :goal_objective, :goal_achieved
end
