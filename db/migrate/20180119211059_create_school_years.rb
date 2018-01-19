class CreateSchoolYears < ActiveRecord::Migration[5.1]
  def change
    create_table :school_years do |t|
      t.string :annee_scolaire
      t.datetime :start_date
      t.datetime :end_date
      t.boolean :status

      t.timestamps
    end
  end
end
