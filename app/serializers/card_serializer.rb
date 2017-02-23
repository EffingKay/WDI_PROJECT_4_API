class CardSerializer < ActiveModel::Serializer
  attributes :id, :content, :color, :votes, :room_id, :user_id
  # validates :content, presence: true
  # validates :color, presence: true
end
