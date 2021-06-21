class Language < ApplicationRecord
  has_many :courses, dependent: :destroy
  has_many :answers, dependent: :destroy
  has_many :language_reviews
end
