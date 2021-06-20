class MentorReview < ApplicationRecord
  belongs_to :user
  belongs_to :mentor, class_name: 'User', foreign_key: 'mentor_id'
  validates :rating, presence: true, numericality: { greater_than: 0, less_than_or_equal_to: 5 }
  validates :user, uniqueness: { scope: :mentor, message: 'You have already reviewed this mentor' }
end
