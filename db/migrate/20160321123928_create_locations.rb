class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.float :latitude
      t.float :longitude
      t.string :address

      t.timestamps null: false
    end
    add_column :projects, :location_id, :integer
    add_index :projects, :location_id
  end
end
