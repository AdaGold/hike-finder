class CreateTrailheads < ActiveRecord::Migration[5.2]
  def change
    create_table :trailheads do |t|
      t.string :name
      t.string :latitude
      t.string :longitude
      t.timestamps
    end
  end
end
