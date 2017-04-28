class CreateBoughts < ActiveRecord::Migration[5.0]
  def change
    create_table :boughts do |t|
      t.string :username
      t.integer :rifa_id

      t.timestamps
    end
  end
end
