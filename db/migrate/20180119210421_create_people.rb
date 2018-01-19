class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
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

      t.timestamps
    end
  end
end
