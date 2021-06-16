class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  belongs_to :mentor, class_name: 'User', foreign_key: 'mentor_id'
  has_many :tickets
  has_many :enrolments
  has_many :courses, through: :enrolments
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
