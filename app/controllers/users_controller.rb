class UsersController < ApplicationController
  def show
    @ticket = Ticket.new
    @mentor_review = MentorReview.new
    @user = User.find(params[:id])
  end

  def become_mentor
  end

  def create_mentor
    current_user.become_mentor!
    current_user.description = params[:users][:description]
    current_user.save

    redirect_to root_path
  end
end
