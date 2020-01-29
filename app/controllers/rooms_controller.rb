class RoomsController < ApplicationController
  before_action :authenticate_user!

  def show
      #@messages = Message.all
      @room = Room.find(params[:id])
      @messages = @room.messages
  end

  def index
    @rooms = Room.all.order(:id)
  end

end
