class Product < ActiveRecord::Base 
  has_many :pictures, as: :imageable
  validates :quantity, numericality: { greater_than: 0 }
  validates :price, presence: true 
  validates :name, presence: true  
end
