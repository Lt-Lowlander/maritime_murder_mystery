class CharStorySerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :char_story
end
