class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.references :religion
      t.references :ethnic
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.string :sexe
      t.datetime :date_nai
      t.string :lieu_nai
      t.string :situation_family
      t.string :regime_matrimonial
      t.hstore :contact
      t.string :email
      t.string :address
      t.hstore :personId
      t.boolean :life

      t.string :nom_pere
      t.string :prenom_pere
      t.string :profession_pere
      t.hstore :contact_pere
      t.string :address_pere

      t.string :nom_mere
      t.string :prenom_mere
      t.string :profession_mere
      t.hstore :contact_mere
      t.string :address_mere

      t.timestamps
    end
  end
end
