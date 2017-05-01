class User < ApplicationRecord

  has_secure_password


  self.primary_key = 'username'
  validates :username, presence: true, uniqueness: true,
            length: {minimum: 4, maximum: 72, message: 'Su nombre de usuario debe tener entre 4 y 72 caracteres'}
  validates :age, presence: true, inclusion: {in: 18..99, message: 'Debes ser mayor de 18 para crear una cuenta'}
  validates :email, presence: true, format: {with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i},
            confirmation: true
  validates :password, presence: true, confirmation: true,
            length: {minimum: 4, maximum: 72, message: 'Su password debe tener entre 4 y 72 caracteres'}

  def to_param
    username
  end

  has_many :rifas, primary_key: 'username'
  has_many :user, through: :follows
  has_many :boughts
  has_many :rifas, through: :boughts
  has_many :calificacions
  has_many :rifas, through: :calificacions

end
