class Answer < ApplicationRecord
  belongs_to :language
  has_many :question_answers, dependent: :destroy
end
