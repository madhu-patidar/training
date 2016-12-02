class RemoveEmailConfiramationFromValtests < ActiveRecord::Migration
  def change
    remove_column :valtests, :email_confiramation, :string
  end
end
