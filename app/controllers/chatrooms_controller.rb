class ChatroomsController < ApplicationController
  before_action :set_chatroom, only: %i[index show]

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
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
