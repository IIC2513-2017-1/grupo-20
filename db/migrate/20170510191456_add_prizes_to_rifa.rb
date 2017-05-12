class AddPrizesToRifa < ActiveRecord::Migration[5.0]
  def change
    add_reference :prizes, :rifa
  end
end
