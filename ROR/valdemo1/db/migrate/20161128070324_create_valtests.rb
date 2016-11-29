class CreateValtests < ActiveRecord::Migration
  def change
    create_table :valtests do |t|
      t.string :email
      t.string :email_confirmation
      t.timestamps null: false
    end
  end
end
