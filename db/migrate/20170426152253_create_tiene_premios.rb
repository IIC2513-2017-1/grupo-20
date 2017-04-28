class CreateTienePremios < ActiveRecord::Migration[5.0]
  def change
    create_table :tiene_premios do |t|
      t.integer :rifa_id
      t.integer :premio_id

      t.timestamps
    end
  end
end
