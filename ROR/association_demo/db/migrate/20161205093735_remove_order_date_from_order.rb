class RemoveOrderDateFromOrder < ActiveRecord::Migration
  def change
    remove_column :orders, :order_date, :date
  end
end
