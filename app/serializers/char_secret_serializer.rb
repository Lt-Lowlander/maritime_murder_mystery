class CharSecretSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :sec_desc
end
