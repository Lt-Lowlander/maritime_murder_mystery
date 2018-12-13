class Faction < ApplicationRecord
  validates :fac_name, presence: true
  # validates :fac_sign, presence: true
  has_many :users
end
