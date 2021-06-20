class UsersController < ApplicationController
  def show
    @ticket = Ticket.new
    @mentor_review = MentorReview.new
    @user = User.find(params[:id])
  end
end
