class CreateMentorReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :mentor_reviews do |t|
      t.string :comment
      t.references :user, null: false, foreign_key: true
      t.references :mentor, null: false

      t.timestamps
    end
  end
end
