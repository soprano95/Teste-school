class CreateFilieres < ActiveRecord::Migration[5.1]
  def change
    create_table :filieres do |t|
      t.references :level, foreign_key: true
      t.string :filiere_name

      t.timestamps
    end
  end
end
