class Rifa < ApplicationRecord
  belongs_to :user
  has_many :prizes
  has_many :numeros

  validates :end_date , date: { after: (DateTime.now + 1.week)}  # DateTime.now == crated_at
  validates :end_date , date: { before: (DateTime.now + 6.months)}  # DateTime.now == crated_at
  validates :numbers, numericality: {only_integers: true, greater_than_or_equal_to: 10}
  validates :price, numericality: {only_integers: true}

  validates :min_price_search, numericality: true

  def self.search(name, premio, min_price, max_price, date)
    rifas = Rifa.all
    if name.present?
      rifas = rifas.where('title ilike ?', "%#{name}%" )
    end
    if premio.present?
      rifas_prize = []
      prizes = Prize.where('name ilike ?', "%#{premio}%" )
      prizes.each do |p|
        rifas_prize << p.rifa
      end
      rifas = rifas & rifas_prize
    end
    if min_price.present? and min_price.is_a? Integer
      rifas = rifas.where('price > ?', min_price )
    end
    if max_price.present? and max_price.is_a? Integer
      rifas = rifas.where('price < ?', max_price )
    end
    if date.present?
      rifas = rifas.where('end_date < ?', "%#{DateTime.now + date.to_i.week}%" )
    end
    rifas
  end
end
