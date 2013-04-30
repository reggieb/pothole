class CreateRoadDefects < ActiveRecord::Migration
  def change
    create_table :road_defects do |t|
      t.decimal :diameter
      t.text :location
      t.text :description
      t.integer :reporter_id

      t.timestamps
    end
  end
end
