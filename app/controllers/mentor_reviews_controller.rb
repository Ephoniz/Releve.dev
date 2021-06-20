class MentorReviewsController < ApplicationController
  def create
    @ticket = Ticket.new
    @user = User.find(mentor_reviews_params[:mentor])
    @mentor_review = MentorReview.new
    @mentor_review.mentor = @user
    @mentor_review.rating = mentor_reviews_params[:rating]
    @mentor_review.comment = mentor_reviews_params[:comment]
    @mentor_review.user = current_user

    if @mentor_review.save
      redirect_to user_path(@mentor_review.mentor), notice: 'Your review was successfully created.'
    else
      redirect_to user_path(@user), notice: "You already reviewed this mentor."
    end
  end

  private

  def mentor_reviews_params
    params.require(:mentor_review).permit(:comment, :mentor, :rating)
  end
end
