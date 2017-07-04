class Rifa < ApplicationRecord
  belongs_to :user
  has_many :prizes
  has_many :numeros
  has_many :comments

  validates :title, presence: true, uniqueness: true
  validates :end_date, presence:true, date: { after: (DateTime.now + 1.week), before: (DateTime.now + 6.months)}  # DateTime.now == crated_at
  validates :numbers, presence:true, numericality: {only_integers: true, greater_than_or_equal_to: 10, less_than_or_equal_to: 5000}
  validates :price, presence:true, numericality: {only_integers: true, greater_than_or_equal_to: 500, less_than_or_equal_to: 50000}

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
    if min_price.present? and min_price.to_i.is_a? Integer
      rifas = rifas.where('price > ?', min_price.to_i )
    end
    if max_price.present? and max_price.to_i.is_a? Integer
      rifas = rifas.where('price < ?', max_price.to_i )
    end
    if date.present?
      rifas = rifas.where('end_date < ?', "%#{DateTime.now + date.to_i.week}%" )
    end
    rifas
  end

  def self.sort_option(order)

      if order == 'p_min'
        self.order(price: :asc)
      elsif order == 'p_max'
        self.order(price: :desc)
      elsif order == 'a_z'
        self.order(title: :asc)
      elsif order == 'z_a'
        self.order(title: :desc)
      elsif order == 'init_date'
        self.order(created_at: :asc)
      elsif order == 'end_date'
        self.order(end_date: :desc)
      end

  end

  # def total_numbers()
  #   numbers_sold = Numero.where(rifa_id: self.id).count
  #   numbers = numbers_sold + self.numbers
  #   numbers
  # end

end
