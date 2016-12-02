class Valtest < ActiveRecord::Base
  
  validates :name, :phone_number, :age, :password, :email, presence: true
  
  validates :age,:phone_number, numericality: { only_integer: true }
  
  validates :name, format: { with: /\A[a-zA-Z ]+\z/,
  message: "only allows letters" }
 
  validates :phone_number, length: { is: 10,  
    message: "Phone Number exact 10 digit"}

    validates :email, confirmation: true

  before_validation do
    self.email = name + "123@gamil.com" unless name.blank?
  end
end