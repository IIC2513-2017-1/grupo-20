class AddNumbersToUser < ActiveRecord::Migration[5.0]
  def change
    add_reference :numeros, :user
  end
end
