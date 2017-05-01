class AddRifaToUser < ActiveRecord::Migration[5.0]
  def change
    add_reference :rifas, :user 
  end
end
