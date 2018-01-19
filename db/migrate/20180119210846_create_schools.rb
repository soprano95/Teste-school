class CreateSchools < ActiveRecord::Migration[5.1]
  def change
    create_table :schools do |t|
      t.references :quartier, foreign_key: true
      t.string :school_name
      t.hstore :contacts
      t.string :address
      t.string :academie
      t.boolean :reinscription
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
