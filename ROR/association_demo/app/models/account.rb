class Account < ActiveRecord::Base
  belongs_to :supplier
 has_one :account_histroy
end
