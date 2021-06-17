class CreateQuestionAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :question_answers do |t|

      t.timestamps
    end
    add_reference :question_answers, :question,  foreign_key: true
    add_reference :question_answers, :answer,  foreign_key: true
  end
end
