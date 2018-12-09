class CharInfoSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :info_desc
end
