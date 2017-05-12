class AddTitleEndDateAndRemainingNumbersToRifas < ActiveRecord::Migration[5.0]
  def change
    add_column :rifas, :title, :string
    add_column :rifas, :end_date, :datetime
    add_column :rifas, :remaining_numbers, :integer
  end
end
