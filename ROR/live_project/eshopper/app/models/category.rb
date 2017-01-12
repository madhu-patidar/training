class Category < ActiveRecord::Base
  belongs_to :product
   has_many :subcategory, class_name: "Category",
                          foreign_key: "category_id"
  belongs_to :category, class_name: "Category"
end

