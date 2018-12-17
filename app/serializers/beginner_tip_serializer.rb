class BeginnerTipSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :advice
end
