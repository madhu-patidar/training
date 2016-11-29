class Employee < ActiveRecord::Base
  validates :name, presence: true,
                    length: { minimum: 5 }
  validates :city, acceptance: { accept: true }            
end
