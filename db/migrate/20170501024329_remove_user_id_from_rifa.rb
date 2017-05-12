class RemoveUserIdFromRifa < ActiveRecord::Migration[5.0]
  def change
    remove_column :rifas, :user_id, :integer
  end
end
