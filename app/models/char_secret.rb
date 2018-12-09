class CharSecret < ApplicationRecord
  belongs_to :user
  validates :sec_desc, presence: true
end
