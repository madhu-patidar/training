class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.boolean :status
      t.references :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
