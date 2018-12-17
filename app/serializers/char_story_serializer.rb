class CharStorySerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :char_story
end
