class Rifa < ApplicationRecord
  belongs_to :user
  has_many :prizes
end
