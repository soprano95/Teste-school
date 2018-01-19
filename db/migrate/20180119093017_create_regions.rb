class CreateRegions < ActiveRecord::Migration[5.1]
  def change
    create_table :regions do |t|
      t.string :region_name
      t.string :region_name_short
      t.integer :position
      t.string :code
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
