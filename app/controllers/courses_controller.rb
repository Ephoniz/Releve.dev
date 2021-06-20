class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
    @course_review = CourseReview.new
    @enrolment = Enrolment.new
  end
end
