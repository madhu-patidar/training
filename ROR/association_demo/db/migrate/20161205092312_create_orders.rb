class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.belongs_to :customer, index: true
      t.date :order_date

      t.timestamps null: false
    end
  end
end
