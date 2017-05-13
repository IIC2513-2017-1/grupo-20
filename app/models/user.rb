class User < ApplicationRecord
  has_secure_password
  has_many :rifas

  validates :password, :length => { :minimum => 4 }
  validates_confirmation_of :password
  

end
