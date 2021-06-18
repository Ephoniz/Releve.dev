class AddImageUrlToLanguages < ActiveRecord::Migration[6.1]
  def change
    add_column :languages, :image_url, :string
  end
end
