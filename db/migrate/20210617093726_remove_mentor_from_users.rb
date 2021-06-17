class RemoveMentorFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :mentor, :boolean
  end
end
