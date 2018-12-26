class Faction < ApplicationRecord
  validates :fac_name, presence: true
  has_many :users
end
