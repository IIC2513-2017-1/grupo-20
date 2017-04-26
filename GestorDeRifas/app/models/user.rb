class User < ApplicationRecord

  has_many :owns
  has_many :rifas, through: :owns
  has_many :user, through: :follows
  has_many :boughts
  has_many :rifas, through: :boughts
  has_many :calificacions
  has_many :rifas, through: :calificacions


end
