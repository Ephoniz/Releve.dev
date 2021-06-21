class AddRatingToMentorReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :mentor_reviews, :rating, :integer
  end
end
