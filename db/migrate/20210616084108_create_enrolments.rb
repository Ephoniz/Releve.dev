class CreateEnrolments < ActiveRecord::Migration[6.1]
  def change
    create_table :enrolments do |t|
      t.boolean :accepted, default: false
      t.references :user, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
