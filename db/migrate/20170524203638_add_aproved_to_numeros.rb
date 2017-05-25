class AddAprovedToNumeros < ActiveRecord::Migration[5.0]
  def change
    add_column :numeros, :aproved, :boolean
  end
end
