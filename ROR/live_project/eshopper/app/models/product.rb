class Product < ActiveRecord::Base 
  belongs_to :brand
  belongs_to :category
  has_many  :pictures, as: :imageable, dependent: :destroy
  validates :quantity, numericality: { greater_than: 0 }
  validates :price, presence: true 
  validates :name, presence: true  
end