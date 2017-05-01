class Rifa < ApplicationRecord

  belongs_to :user, primary_key: 'username'
  has_many :premios
  has_many :boughts
  has_many :users, through: :boughts
  has_many :calificacions
  has_many :user, through: :calificacions


end
