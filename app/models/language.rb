class Language < ApplicationRecord
  has_many :courses, dependent: :destroy
  has_many :answers, dependent: :destroy
  has_many :language_reviews

  def language_rating(language)
    reviews = language.language_reviews
    if reviews.count.positive?
      rating = reviews.sum(:rating) / reviews.count
      rating.round
    else
      0
    end
  end
end
