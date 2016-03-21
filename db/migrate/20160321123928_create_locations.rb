class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.belongs_to :project, index:true
      t.float :latitude
      t.float :longitude
      t.string :address

      t.timestamps null: false
    end
  end
end
