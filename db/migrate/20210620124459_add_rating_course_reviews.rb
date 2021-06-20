class AddRatingCourseReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :course_reviews, :rating, :integer
  end
end
