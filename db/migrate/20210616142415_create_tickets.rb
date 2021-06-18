class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tickets do |t|
      t.string :comment
      t.string :status
      t.references :user, null: false, foreign_key: true
      t.references :mentor

      t.timestamps
    end
  end
end
