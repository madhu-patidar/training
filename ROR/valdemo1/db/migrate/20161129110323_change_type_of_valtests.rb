class ChangeTypeOfValtests < ActiveRecord::Migration
  def change
    change_column :valtests, :phone_number, :string
  end
end
