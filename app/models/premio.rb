class Premio < ApplicationRecord

  has_one :rifa, foreign_key: :rifa_id

end
