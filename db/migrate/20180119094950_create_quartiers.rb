class CreateQuartiers < ActiveRecord::Migration[5.1]
  def change
    create_table :quartiers do |t|
      t.references :commune, foreign_key: true
      t.string :quartier_name
      t.string :quartier_name_short
      t.integer :position
      t.string :code
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
