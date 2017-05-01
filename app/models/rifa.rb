class Rifa < ApplicationRecord

  has_one :own
  has_many :premios, through: :tiene_premio
  has_many :boughts
  has_many :users, through: :boughts
  has_many :calificacions
  has_many :users, through: :calificacions


end
