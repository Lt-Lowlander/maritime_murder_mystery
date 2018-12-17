class OtherPersonSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :lead_name, :lead_info
end
