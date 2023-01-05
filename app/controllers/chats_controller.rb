# frozen_string_literal: true

class ChatsController < ApplicationController
  before_action :set_current_user

  def create
    @chat = @current_user.chats.create(content: chat_params[:content], room_id: params[:room_id])
  end

  private

  def chat_params
    params.require(:chat).permit(:content)
  end
end
