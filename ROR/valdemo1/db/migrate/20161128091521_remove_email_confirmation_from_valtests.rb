class RemoveEmailConfirmationFromValtests < ActiveRecord::Migration
  def change
    remove_column :valtests, :email_confirmation, :string
  end
end
