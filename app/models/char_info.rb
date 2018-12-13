class CharInfo <ApplicationRecord
  belongs_to :user
  validates :info_desc, presence: true
end
