class AddRatingToLanguageReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :language_reviews, :rating, :integer
  end
end
