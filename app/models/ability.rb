class Ability < ApplicationRecord
  belongs_to :user
  validates :power_name, :power_desc, presence: true
  validates :quant_total, numericality: { greater_than_or_equal_to: 0 }
  validates :quant_used, numericality: { greater_than_or_equal_to: 0 }
  validates :quant_left, numericality: { greater_than_or_equal_to: 0 }
end
