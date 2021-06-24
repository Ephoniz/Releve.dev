class MessagesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    @ticket = Ticket.find(message_params[:ticket_id])
    @message = Message.new(content: message_params[:content])
    @message.chatroom = @chatroom
    @message.user = current_user
    if @message.save
      ChatroomChannel.broadcast_to(
        @chatroom,
        render_to_string(partial: "message", locals: { message: @message })
      )
      redirect_to user_ticket_path(@ticket.user, @ticket, anchor: "message-#{@message.id}")
    else
      render "tickets/show"
    end
  end

  private

  def message_params
    params.require(:message).permit(:content, :ticket_id)
  end
end
