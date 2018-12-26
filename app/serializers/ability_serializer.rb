class AbilitySerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :power_name, :power_desc
  has_many :cells
end
