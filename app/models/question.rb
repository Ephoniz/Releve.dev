class Question < ApplicationRecord
  belongs_to :quiz
  has_many :question_answers, dependent: :destroy
  has_many :answers, through: :question_answers, dependent: :destroy
end
