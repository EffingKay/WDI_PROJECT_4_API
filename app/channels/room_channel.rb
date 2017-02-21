class RoomChannel < ApplicationCable::Channel

  def subscribed
    @room = Room.find room_id
    stream_from stream_name
  end

  # If no action string is given to ngActionCable then this is fired...
  def receive(data)
p "Does this always get fired??"
  end

  def choose_card(data)
p "Adding a card................"

    card = data.fetch('message')
    # Find current_user using token...
    # Could improve this somehow
    @current_user = User.find(Auth.decode(card.fetch('token'))[:id])

    return if @current_user.id != card.fetch('user_id')

    @room.cards.create!(
      content: card.fetch('content'),
      color: card.fetch('color'),
      user_id: card.fetch('user_id')
    )

    ActionCable.server.broadcast stream_name, card
  end

  # Why doesn't this work?
  # - RoomChannel.broadcast_to(stream_name, data.fetch('message'))

  private

    # Why is it called room_channel_ ?
    def stream_name
      "room_channel_#{@room.id}"
    end

    # ngActionCable will send it's data in a data object inside params
    # we need to first fetch out the data object, then we can take out
    # any other params from that.
    def room_id
      room_params.fetch('id')
    end

    def room_params
      params.fetch('data')
    end

end