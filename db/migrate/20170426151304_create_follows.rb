class CreateFollows < ActiveRecord::Migration[5.0]
  def change
    create_table :follows do |t|
      t.string :username1
      t.string :username2

      t.timestamps
    end
  end
end
