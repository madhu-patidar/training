class AddOrderNameFromOrder < ActiveRecord::Migration
  def change
    add_column :orders, :order_name, :string
  end
end
