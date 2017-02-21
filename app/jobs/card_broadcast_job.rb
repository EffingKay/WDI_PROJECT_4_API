class CardBroadcastJob < ApplicationJob
  queue_as :default

  # def perform card
  #   ActionCable.server.broadcast "room_channel_#{card[:room_id]}", card
  # end

end
