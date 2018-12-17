class FactionSerializer < ActiveModel::Serializer
  attributes :id, :fac_name
  # attributes :fac_sign
  has_many :users
end
