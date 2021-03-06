require 'open-uri'

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  has_many :tickets
  has_many :quizzes
  has_many :enrolments
  has_many :courses, through: :enrolments
  has_many :mentor_reviews

  has_one_attached :profile_picture

  def name
    if full_name.present?
      full_name
    else
      "#{first_name} #{last_name}"
    end
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

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.full_name = auth.info.name
      user.username = auth.info.nickname
      user.uid = auth.uid
      user.email = auth.info.email
      user.password = Devise.friendly_token[0, 20]
    end
  end

  def become_mentor!
    pro ? self.mentor = true : self.mentor = false
  end
end
