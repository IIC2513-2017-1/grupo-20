class AddNameToPrizes < ActiveRecord::Migration[5.0]
  def change
    add_column :prizes, :name, :string
  end
end
