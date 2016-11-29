class AddEmailConfirmationToValtests < ActiveRecord::Migration
  def change
    add_column :valtests, :email_confirmation, :string
  end
end
