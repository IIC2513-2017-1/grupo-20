class CreateRifas < ActiveRecord::Migration[5.0]
  def change
    create_table :rifas do |t|
      t.string :owner
      t.integer :price
      t.integer :numbers
      t.timestamps
    end
  end
end
