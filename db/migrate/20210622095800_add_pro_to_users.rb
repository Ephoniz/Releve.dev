class AddProToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :pro, :boolean, default: false
  end
end
