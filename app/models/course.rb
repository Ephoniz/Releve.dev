class Course < ApplicationRecord
  has_many :enrolments, dependent: :destroy
  has_many :course_reviews
  belongs_to :language
end
