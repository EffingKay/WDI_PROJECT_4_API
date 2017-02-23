class CardsController < ApplicationController

  def create
    card = Card.new(card_params)
    if card.save
      render json: card, status: :ok
      # ActionCable.server.broadcast "room_channel_#{card[:room_id]}", content: card.content
    end
  end

  def index
    @cards = Card.all
    render json: @cards, status: :ok
  end

  def show
    card = Card.find(params[:id])
    render json: card
  end

  def destroy
    @card = Card.find(params[:id])
    @card.destroy
    render json: {message: "card deleted"}
  end

  def update
    @card = Card.find(params[:id])

    respond_to do |format|
      if @card.update(card_params)
        format.json { render @card, status: :ok }
      else
        format.json { render json: @card.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def card_params
      hash = {}
      hash.merge! params.slice(:content, :color, :pick, :room_id, :votes)
      hash
    end
end
