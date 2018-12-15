class OtherPerson < ApplicationRecord
  belongs_to :user
  validates :lead_name, :lead_info, presence: true
end
