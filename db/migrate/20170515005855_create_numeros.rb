class CreateNumeros < ActiveRecord::Migration[5.0]
  def change
    create_table :numeros do |t|
      t.integer :number
      t.timestamps
    end
  end
end
