class EnrolmentsController < ApplicationController
  def create
    @course_review = CourseReview.new
    @course = Course.find(params[:course_id])
    @enrolment = Enrolment.new
    @enrolment.user = current_user
    @enrolment.course = @course

    if @enrolment.save
      redirect_to dashboard_path(current_user)
    else
      redirect_to course_path(@course), notice: "You have already joined this course."
    end
  end
end
