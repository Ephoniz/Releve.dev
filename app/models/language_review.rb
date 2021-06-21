class LanguageReview < ApplicationRecord
  belongs_to :user
  belongs_to :language
  validates :rating, presence: true, numericality: { greater_than: 0, less_than_or_equal_to: 5 }
  validates :user, uniqueness: { scope: :language, message: 'You have already reviewed this language' }
end
