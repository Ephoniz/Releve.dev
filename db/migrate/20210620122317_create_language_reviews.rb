class CreateLanguageReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :language_reviews do |t|
      t.string :comment
      t.references :user, null: false, foreign_key: true
      t.references :language, null: false, foreign_key: true

      t.timestamps
    end
  end
end
