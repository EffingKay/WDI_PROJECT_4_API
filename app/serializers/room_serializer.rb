class RoomSerializer < ActiveModel::Serializer
  attributes :id, :title, :black_card, :pick
  has_many :cards
end
