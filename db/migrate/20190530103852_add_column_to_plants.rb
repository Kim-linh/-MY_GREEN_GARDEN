class AddColumnToPlants < ActiveRecord::Migration[5.2]
  def change
    add_column :plants, :origin, :string
    add_column :plants, :maintenance, :text
    add_column :plants, :category, :string
  end
end
