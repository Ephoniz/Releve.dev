class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :tickets
  has_many :quizzes
  has_many :enrolments
  has_many :courses, through: :enrolments
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
 def name
  "#{first_name} #{last_name}"
 end

end
