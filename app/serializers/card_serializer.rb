class CardSerializer < ActiveModel::Serializer
  attributes :id, :content, :color, :pick, :room_id
  # validates :content, presence: true
  # validates :color, presence: true
end
