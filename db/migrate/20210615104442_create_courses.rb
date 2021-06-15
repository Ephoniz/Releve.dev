class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.text :description
      t.string :difficulty
      t.integer :origin_rating
      

      t.timestamps
    end
  end
end
