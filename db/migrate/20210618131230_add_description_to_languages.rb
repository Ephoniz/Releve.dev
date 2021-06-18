class AddDescriptionToLanguages < ActiveRecord::Migration[6.1]
  def change
    add_column :languages, :description, :string
  end
end
