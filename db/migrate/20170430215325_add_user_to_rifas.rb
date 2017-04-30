class AddUserToRifas < ActiveRecord::Migration[5.0]
  def change
    add_reference :rifas, :user, foreign_key: true
  end
end
