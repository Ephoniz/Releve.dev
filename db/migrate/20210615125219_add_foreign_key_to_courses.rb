class AddForeignKeyToCourses < ActiveRecord::Migration[6.1]
  def change
    add_reference :courses, :language,  foreign_key: true
  end
end
