class FactionSerializer < ActiveModel::Serializer
  attributes :fac_name
  # attributes :fac_sign
  has_many :users
end
