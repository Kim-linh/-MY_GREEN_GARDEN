class AddDaysToPlants < ActiveRecord::Migration[5.2]
  def change
    add_column :plants, :days, :integer, default: 0, null: false
  end
end
