class CourseReviewsController < ApplicationController
  def create
    @enrolment = Enrolment.new
    @course = Course.find(course_reviews_params[:course])
    @course_review = CourseReview.new
    @course_review.course = @course
    @course_review.rating = course_reviews_params[:rating]
    @course_review.comment = course_reviews_params[:comment]
    @course_review.user = current_user

    if @course_review.save
      redirect_to course_path(@course_review.course), notice: 'Your review was successfully created.'
    else
      redirect_to course_path(@course), notice: "You already reviewed this course."
    end
  end

  private

  def course_reviews_params
    params.require(:course_review).permit(:comment, :course, :rating)
  end
end
