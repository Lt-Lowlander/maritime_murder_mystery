class CharInfoSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :info_desc
end
