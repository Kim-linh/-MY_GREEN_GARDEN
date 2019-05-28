class CreateUserPlants < ActiveRecord::Migration[5.2]
  def change
    create_table :user_plants do |t|
      t.references :user, foreign_key: true
      t.references :plant, foreign_key: true
      t.string :name
      t.string :picture
      t.integer :origin_health

      t.timestamps
    end
  end
end
