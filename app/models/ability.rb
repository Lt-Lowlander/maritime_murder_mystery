class Ability < ApplicationRecord
  belongs_to :user
  validates :power_name, :power_desc, presence: true
  has_many :cells
end
