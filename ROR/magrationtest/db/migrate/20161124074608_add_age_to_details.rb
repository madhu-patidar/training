class AddAgeToDetails < ActiveRecord::Migration
  def change
    add_column :details, :age, :integer
  end
end
