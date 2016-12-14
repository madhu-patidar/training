class RenameSalareToSal < ActiveRecord::Migration
  def change
    rename_column :employees, :salary, :sal
  end
end
