class CreateCercles < ActiveRecord::Migration[5.1]
  def change
    create_table :cercles do |t|
      t.references :regions, foreign_key: true
      t.string :cercle_name
      t.string :cercle_name_short
      t.integer :position
      t.string :code
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
