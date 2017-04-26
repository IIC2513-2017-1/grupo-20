class CreateCalficacions < ActiveRecord::Migration[5.0]
  def change
    create_table :calficacions do |t|
      t.integer :estrellas
      t.string :username
      t.integer :rifa_id

      t.timestamps
    end
  end
end
