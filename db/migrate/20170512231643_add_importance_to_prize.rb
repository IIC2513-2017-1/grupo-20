class AddImportanceToPrize < ActiveRecord::Migration[5.0]
  def change
    add_column :prizes, :importance, :integer
  end
end
