class Rating < ApplicationRecord
  belongs_to :user

  validates :user_id, uniqueness: {scope: :rater_id}
end
