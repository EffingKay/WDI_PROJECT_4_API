class CardsController < ApplicationController
  def create
    card = Card.new(card_params)
    if card.save
      render json: card, status: :ok
      # ActionCable.server.broadcast "room_channel_#{card[:room_id]}", content: card.content
    end
  end

  def index
    cards = Card.all
    render json: cards, status: :ok
  end

  def destroy
    @card = Card.find(params[:id])
    @card.destroy
    render json: {message: "card deleted"}
  end

  private
    def card_params
      hash = {}
      hash.merge! params.slice(:content, :color, :pick, :room_id)
      hash
    end
end
