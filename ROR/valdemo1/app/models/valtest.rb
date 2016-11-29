class Valtest < ActiveRecord::Base
  validates :email, uniqueness: true, length: {
    minimum: 5,
    maximum: 25,
    too_short: "must have at least %{count} words",
    too_long: "must have at most %{count} words"
  }
  validates :name, presence: true
  validates :phone_number, presence: true
  validates :age, presence: true
  validates :password, presence: true
end