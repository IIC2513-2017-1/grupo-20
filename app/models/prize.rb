class Prize < ApplicationRecord
  belongs_to :rifa

  validates :name, presence: true
end
