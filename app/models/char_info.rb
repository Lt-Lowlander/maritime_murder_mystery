class CharInfo <ApplicationRecord
  belongs_to :User
  validates :info_desc, presence: true
end
