class CourseReview < ApplicationRecord
  belongs_to :user
  belongs_to :course
  validates :rating, presence: true, numericality: { greater_than: 0, less_than_or_equal_to: 5 }
  validates :user, uniqueness: { scope: :course, message: 'You have already reviewed this course' }
end
