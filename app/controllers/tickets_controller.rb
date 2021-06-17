class TicketsController < ApplicationController
  def new
    @ticket = Ticket.new
    @mentor = User.find(params[:user_id])
  end

  def create
    @ticket = Ticket.new
    @ticket.mentor = User.find(tickets_params[:mentor])
    @ticket.comment = tickets_params[:comment]
    @ticket.user = current_user

    if @ticket.save 
      redirect_to dashboard_path, notice: 'Ticket was successfully created.'
    else
      render :new
    end
  end
  def show
    
  end

  private

  def set_ticket
    @ticket = Ticket.find(params[:id])
  end

  def tickets_params
    params.require(:ticket).permit(:comment, :mentor)
  end
end
