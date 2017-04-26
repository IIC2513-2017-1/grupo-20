class RemoveRIdFromRifas < ActiveRecord::Migration[5.0]
  def change
    remove_column :rifas, :r_id, :integer
  end
end
