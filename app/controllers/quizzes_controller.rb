class QuizzesController < ApplicationController
  def show
    @quizz = Quiz.find(params[:id])
  end

  def result
  end
end
