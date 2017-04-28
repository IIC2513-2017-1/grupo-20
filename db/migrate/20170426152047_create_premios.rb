class CreatePremios < ActiveRecord::Migration[5.0]
  def change
    create_table :premios do |t|
      t.string :premio
      t.integer :importancia

      t.timestamps
    end
  end
end
