class CellsSerializer < ActiveModel::Serializer
  belongs_to :ability
  attributes :id, :consumed
end
