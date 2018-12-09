class BeginnerTipSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :advice
end
