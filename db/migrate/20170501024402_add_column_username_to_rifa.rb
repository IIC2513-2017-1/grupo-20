class AddColumnUsernameToRifa < ActiveRecord::Migration[5.0]
  def change
    add_column :rifas, :username, :string, foreign_key: true
  end

end
