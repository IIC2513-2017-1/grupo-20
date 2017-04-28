class RemoveEmailConfirmColumnFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :email_confirmed, :boolean
    remove_column :users, :confirm_token, :string
  end
end
