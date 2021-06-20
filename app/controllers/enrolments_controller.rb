class EnrolmentsController < ApplicationController
  def create
    @course = Course.find(params[:course_id])
    @enrolment = Enrolment.new
    @enrolment.user = current_user
    @enrolment.course = @course

    if @enrolment.save
      redirect_to course_path(@course), notice: 'Enrolment was succesfully created'
    else
      render :new
    end
  end
end
