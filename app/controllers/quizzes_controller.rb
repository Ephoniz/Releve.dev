class QuizzesController < ApplicationController
  layout 'application_clear'

  def show
    @quiz = Quiz.find(params[:id])
  end

  def result
    @recommendations = recommendations
  end

  private

  def recommendations
    answers = params[:result].values.map do |id|
      Answer.find(id.to_i).language
    end

    answers.group_by { |x| x }.sort_by { |x, list| [-list.size, x] }.map(&:first)
  end
end
