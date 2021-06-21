class Ticket < ApplicationRecord
  belongs_to :user
  belongs_to :mentor, class_name: 'User', foreign_key: 'mentor_id'
  validates :user, uniqueness: { scope: :mentor, message: 'You have already have a ticket with this mentor' }
end
