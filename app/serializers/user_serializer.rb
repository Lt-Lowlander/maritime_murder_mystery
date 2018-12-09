class UserSerializer < ActiveModel::Serializer
  belongs_to :faction
  attributes :id, :role, :character, :title, :tagline

  has_one :char_story
  has_many :abilities
  has_one :char_secret
  has_many :char_infos
  has_many :beginner_tips
  has_many :other_people
  has_many :goals
  has_many :player_notes
end
