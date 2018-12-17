class AbilitySerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :power_name, :power_desc, :quant_total, :quant_used, :quant_left
end
