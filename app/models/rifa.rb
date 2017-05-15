class Rifa < ApplicationRecord
  belongs_to :user
  has_many :prizes
  has_many :numeros

  validates :end_date , date: { after: (DateTime.now + 1.week)}  # DateTime.now == crated_at
  validates :end_date , date: { before: (DateTime.now + 6.months)}  # DateTime.now == crated_at
  validates :numbers, numericality: {only_integers: true, greater_than_or_equal_to: 10}
  validates :price, numericality: {only_integers: true}

end
