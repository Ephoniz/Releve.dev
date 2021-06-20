class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :tickets
  has_many :quizzes
  has_many :enrolments
  has_many :courses, through: :enrolments
  has_many :mentor_reviews
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def name
    "#{first_name} #{last_name}"
  end

  def mentor_reviews(current_mentor)
    MentorReview.where(mentor: current_mentor)
  end
end
