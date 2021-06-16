class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.string :content

      t.timestamps
    end

    add_reference :questions, :quiz,  foreign_key: true
  end
end
