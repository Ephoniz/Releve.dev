class Ticket < ApplicationRecord
  belongs_to :user
  belongs_to :mentor, class_name: 'User', foreign_key: 'mentor_id'
end
