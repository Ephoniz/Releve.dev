class TicketsController < ApplicationController
  def create
    @ticket = Ticket.new
    @user = User.find(tickets_params[:mentor])
    @ticket.mentor = @user
    @ticket.comment = tickets_params[:comment]
    @ticket.user = current_user
    @chatroom = Chatroom.new(name: "#{@ticket.mentor.name}-#{@ticket.user.name}")
    @chatroom.save
    @ticket.chatroom_id = @chatroom.id

    if @ticket.save
      redirect_to dashboard_path, notice: 'Ticket was successfully created.'
    else
      redirect_to user_path(@user), notice: "Couldn't create a ticket or you already have a ticket with this mentor"
    end
  end

  def show
    set_ticket
    @chatroom = Chatroom.find(@ticket.chatroom_id)
    @message = Message.new
  end

  private

  def set_ticket
    @ticket = Ticket.find(params[:id])
  end

  def tickets_params
    params.require(:ticket).permit(:comment, :mentor)
  end
end
