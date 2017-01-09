class CreateRetweet < ActiveRecord::Migration
  def change
    create_table :retweets do |t|
      t.text :body
      t.references :user, index: true, foreign_key: true
      t.references :tweet, index: true, foreign_key: true
    end
  end
end
