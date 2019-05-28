class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.references :user_plant, foreign_key: true
      t.datetime :date
      t.integer :health

      t.timestamps
    end
  end
end
