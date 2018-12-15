class OtherPersonSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :lead_name, :lead_info
end
