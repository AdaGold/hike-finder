class CreateHikes < ActiveRecord::Migration[5.2]
  def change
    create_table :hikes do |t|
      t.string :name
      t.float :length_miles
      t.integer :elevation_gain_feet
      t.integer :max_elevation_feet
      t.float :rating

      t.timestamps
    end
  end
end
