class AddPictureToPlants < ActiveRecord::Migration[5.2]
  def change
    add_column :plants, :picture, :string
  end
end
