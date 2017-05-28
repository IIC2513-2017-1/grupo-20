class AddCommentsToRifa < ActiveRecord::Migration[5.0]
  def change
    add_reference :comments, :rifa
  end
end
