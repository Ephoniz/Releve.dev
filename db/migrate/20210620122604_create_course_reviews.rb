class CreateCourseReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :course_reviews do |t|
      t.string :comment
      t.references :user, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
