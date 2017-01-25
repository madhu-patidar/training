class CartItem < ActiveRecord::Base
  belongs_to :customer
  belongs_to :product
  validates :quantity, numericality: { greater_than_or_equal_to: 0 }
end
