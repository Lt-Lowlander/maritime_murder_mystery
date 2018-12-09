class Faction < ApplicationRecord
  validates :fac_name, :fac_sign, presence: true
  has_many :users
end
