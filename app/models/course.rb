class Course < ApplicationRecord
has_many :enrolments
belongs_to :language
end
