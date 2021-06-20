class Enrolment < ApplicationRecord
  belongs_to :user
  belongs_to :course
  validates :course, uniqueness: { scope: :user, message: 'You have already joined this course' }
end
