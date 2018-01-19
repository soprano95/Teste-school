class CreateEnrollments < ActiveRecord::Migration[5.1]
  def change
    create_table :enrollments do |t|
      t.references :school, foreign_key: true
      t.integer :person_student_id
      t.string :type_enroll
      t.string :num
      t.string :num_enroll
      t.references :school_year, foreign_key: true
      t.datetime :date_enroll
      t.references :filiere, foreign_key: true
      t.references :grade, foreign_key: true

      t.timestamps
    end
  end
end
