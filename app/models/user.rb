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
  
  has_one_attached :profile_picture       

  def name
    "#{first_name} #{last_name}"
  end

  def mentor_reviews(current_mentor)
    MentorReview.where(mentor: current_mentor)
  end

  def user_rating(user)
    reviews = mentor_reviews(user)
    if reviews.count.positive?
      rating = reviews.sum(:rating) / reviews.count
      rating.round
    else
      0
    end
  end
end
