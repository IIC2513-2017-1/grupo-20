class Rifa < ApplicationRecord


  has_one :own
  has_many :tiene_premios
  has_many :premios, through: :tiene_premios

  belongs_to :user, primary_key: 'username'
  has_many :premios
  has_many :boughts
  has_many :users, through: :boughts
  has_many :calificacions
  has_many :user, through: :calificacions


end
