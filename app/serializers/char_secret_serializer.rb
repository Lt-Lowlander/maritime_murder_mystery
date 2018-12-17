class CharSecretSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :sec_desc
end
