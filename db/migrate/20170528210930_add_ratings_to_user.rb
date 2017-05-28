class AddRatingsToUser < ActiveRecord::Migration[5.0]
  def change
    add_reference :ratings, :user
  end
end
