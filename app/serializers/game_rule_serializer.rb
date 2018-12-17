class GameRuleSerializer < ActiveModel::Serializer
  attributes :id, :rule_name, :rule_desc
end
