class ChatroomsController < ApplicationController
  before_action :set_chatroom, only: %i[index show]
  def index
    @chatrooms = Chatroom.all
  end

  private

  def set_chatroom
    @chatroom = Chatroom.find(params[:id])
  end

  def chatroom_params
    params.require(:chatroom).permit(
      :campaign_id
    )
  end
end
