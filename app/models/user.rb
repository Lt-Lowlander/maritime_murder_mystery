class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :faction

  validates :role, :character, :title, :tagline, presence: true

  has_one :char_story
  has_many :abilities
  has_one :char_secret
  has_many :char_infos
  has_many :beginner_tips
  has_many :other_people
  has_many :goals
  has_many :player_notes

  def admin?
    role == "admin"
  end

  class << self
    def current_user=(user)
      Thread.current[:current_user] = user
    end

    def current_user
      Thread.current[:current_user]
    end
  end

end
