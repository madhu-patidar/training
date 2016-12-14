class CreateAccountHistories < ActiveRecord::Migration
  def change
    create_table :account_histories do |t|
      t.string :account_histroy

      t.timestamps null: false
    end
  end
end
