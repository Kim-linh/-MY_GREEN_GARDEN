class ChangeColumnToPlants < ActiveRecord::Migration[5.2]
  def change
    rename_column :plants, :type, :variety
  end
end
