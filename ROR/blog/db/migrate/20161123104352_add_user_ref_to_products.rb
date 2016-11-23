class AddUserRefToProducts < ActiveRecord::Migration
  def change
    add_column :products, :user, :reference
  end
end
