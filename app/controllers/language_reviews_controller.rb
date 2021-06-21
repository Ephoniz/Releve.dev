class LanguageReviewsController < ApplicationController
  def create
    @language_review = LanguageReview.new
    @language = Language.find(language_reviews_params[:language])
    @language_review.language = @language
    @language_review.rating = language_reviews_params[:rating]
    @language_review.comment = language_reviews_params[:comment]
    @language_review.user = current_user

    if @language_review.save
      redirect_to language_path(@language_review.language), notice: 'Your review was successfully created.'
    else
      redirect_to language_path(@language), notice: "You already reviewed this language."
    end
  end

  private

  def language_reviews_params
    params.require(:language_review).permit(:comment, :language, :rating)
  end
end
