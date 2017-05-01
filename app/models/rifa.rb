class Rifa < ApplicationRecord

  has_one :own
  has_many :tiene_premios
  has_many :premios, through: :tiene_premios
  has_many :boughts
  has_many :users, through: :boughts
  has_many :calificacions
  has_many :users, through: :calificacions


end
