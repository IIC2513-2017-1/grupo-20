class CreateUsers < ActiveRecord::Migration[5.0]

  def change
    create_table :users, id: false do |t|
      t.string :username, null: false
      t.text :bio
      t.integer :age
      t.string :email
      t.string :password

      t.timestamps
    end

    add_index :users, :username, unique: true
  end
end
