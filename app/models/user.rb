class User < ApplicationRecord
  has_secure_password
  has_many :rifas

  validates :name, presence: true, uniqueness: true, length: { minimum:4, maximum: 20 }
  validates :mail, presence: true, uniqueness: true,
            format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates_confirmation_of :mail
  validates :password, :length => { :minimum => 4 }
  validates_confirmation_of :password
  

end
