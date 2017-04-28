class Rifa < ApplicationRecord

  has_one :own
  has_many :premios
  has_many :boughts
  has_many :users, through: :boughts
  has_many :calificacions
  has_many :user, through: :calificacions


end
