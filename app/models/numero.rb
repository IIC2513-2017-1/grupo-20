class Numero < ApplicationRecord
  belongs_to :rifa
  belongs_to :user

  validates :number, presence: true, uniqueness: true
end
