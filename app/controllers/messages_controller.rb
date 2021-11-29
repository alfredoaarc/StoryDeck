class MessagesController < ApplicationController
  before_action :set_message, only: %i[index show]
  def index
    @messages = Message.all
  end

  def show

  end

  private

  def set_message
    @message = Message.find(params[:id])
  end

  def messages_params
    params.require(:message).permit(
      :chatroom_id,
      :user_id
    )
  end
end
