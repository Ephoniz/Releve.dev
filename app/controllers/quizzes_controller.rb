class QuizzesController < ApplicationController
  def show
    @quiz = Quiz.find(params[:id])
  end

  def result
    @recommendations = recommendations
  end

  private

  def recommendations
    params[:result].values.group_by { |x| x }.sort_by { |x, list| [-list.size, x] }.map(&:first)
  end
end
