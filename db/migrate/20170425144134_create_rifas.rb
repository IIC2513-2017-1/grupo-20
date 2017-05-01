class CreateRifas < ActiveRecord::Migration[5.0]
  def change
    create_table :rifas do |t|
      t.datetime :fecha_inicio
      t.datetime :fecha_termino
      t.string :titulo
      t.integer :r_id
      t.timestamps
    end
  end
end
