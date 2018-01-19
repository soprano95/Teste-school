class CreateCommunes < ActiveRecord::Migration[5.1]
  def change
    create_table :communes do |t|
      t.references :cercle, foreign_key: true
      t.string :commune_name
      t.string :commune_name_short
      t.integer :position
      t.string :code
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
