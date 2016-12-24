class CreateArticals < ActiveRecord::Migration
  def change
    create_table :articals do |t|
      t.string :title
      t.string :text

      t.timestamps null: false
    end
  end
end
