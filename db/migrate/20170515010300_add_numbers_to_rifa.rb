class AddNumbersToRifa < ActiveRecord::Migration[5.0]
  def change
    add_reference :numeros, :rifa
  end
end
