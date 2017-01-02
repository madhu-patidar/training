class Post < ActiveRecord::Base
  belongs_to :user
  validates :post_body,presence: true
 
  default_scope -> { order('created_at DESC') }
end
