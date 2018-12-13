class GameRule < ApplicationRecord
  validates :rule_name, :rule_desc, presence: true
  has_many :users
end
