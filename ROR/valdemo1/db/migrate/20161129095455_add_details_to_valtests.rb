class AddDetailsToValtests < ActiveRecord::Migration
  def change
    add_column :valtests, :name, :string
    add_column :valtests, :age, :integer
    add_column :valtests, :password, :string
    add_column :valtests, :phone_number, :decimal
  end
end
