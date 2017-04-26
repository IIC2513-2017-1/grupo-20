class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username
      t.text :bio
      t.integer :age
      t.string :email
      t.binary :profile_pic
      t.string :password

      t.timestamps
    end
  end
end
