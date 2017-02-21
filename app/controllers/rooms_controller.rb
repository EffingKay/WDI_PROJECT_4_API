class RoomsController < ApplicationController

  def index
    @rooms = Room.all
    render json: @rooms
  end

  def show
    @room = Room.find(params[:id])
    render json: @room
  end

  def create
    room = Room.new(room_params)
    if room.save
      render json: room, status: :ok
    end
  end

  def destroy
    @room = Room.find(params[:id])
    @room.destroy
    render json: {message: "room deleted"}
  end


  private
    def room_params
      hash = {}
      hash.merge! params.slice(:title)
      hash
    end
end
