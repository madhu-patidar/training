class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :post_body
    end
  end
end
