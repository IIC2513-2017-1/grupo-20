class Numero < ApplicationRecord
  belongs_to :rifa
  belongs_to :user

  validates :number, presence: true
  validates :rifa_id, uniqueness: {scope: :number}
end
