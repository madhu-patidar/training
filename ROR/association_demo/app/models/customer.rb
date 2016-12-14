class Customer < ActiveRecord::Base
  has_one :address
  has_many :orders,  dependent: :destroy
  has_and_belongs_to_many :roles
 #  default_scope { where name: ['madhu','Ram'] }
 # scope :active, -> { where name: ['Ram'] }
 
 # Customer.unscoped {
 #  Order.find(14)
# }
def name
    "I am #{super}"
  end
end