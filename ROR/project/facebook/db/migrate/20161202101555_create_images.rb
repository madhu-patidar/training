class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.binary :image
    end
  end
end
