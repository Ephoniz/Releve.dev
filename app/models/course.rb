class Course < ApplicationRecord
  has_many :enrolments, dependent: :destroy
  belongs_to :language
end
