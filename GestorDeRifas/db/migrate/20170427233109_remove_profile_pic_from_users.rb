class RemoveProfilePicFromUsers < ActiveRecord::Migration[5.0]

  def up
    remove_column :users, :profile_pic
  end

  def down
    add_column :users, :profile_pic, :bytes
  end
end
