class ChangeTypeOfEmployees < ActiveRecord::Migration
  def change
    change_column :employees, :salary, :integer
  end
end
