class ConversationsController < ApplicationController
  def index
    render json: Conversation.all
  rescue
    render json: []
  end

  def create
    conversation = Conversation.new(conversation_params)

    return unless conversation.save

    serialized_data = ActiveModelSerializers::Adapter::Json.new(
      ConversationSerializer.new(conversation)
    ).serializable_hash

    ActionCable.server.broadcast 'conversations_channel', serialized_data

    head :ok
  end

  private

  def conversation_params
    params.require(:conversation).permit(:title)
  end
end
