class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.string :content

      t.timestamps
    end

    add_reference :answers, :language,  foreign_key: true
  end
end
