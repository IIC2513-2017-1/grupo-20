class Rifa < ApplicationRecord
  belongs_to :user
  has_many :prizes

  validates :end_date , date: { after: (DateTime.now + 1.week)}  # DateTime.now == crated_at
  validates :end_date , date: { before: (DateTime.now + 6.months)}  # DateTime.now == crated_at


end
