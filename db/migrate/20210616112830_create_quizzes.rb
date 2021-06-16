class CreateQuizzes < ActiveRecord::Migration[6.1]
  def change
    create_table :quizzes do |t|
      t.string :name

      t.timestamps
    end

    add_reference :quizzes, :user,  foreign_key: true
  end
end
