class Rifa < ApplicationRecord
  belongs_to :user
  has_many :prizes

  scope :prizes, ->(id) { Prize.where("rifa_id < ?", id)}
end
