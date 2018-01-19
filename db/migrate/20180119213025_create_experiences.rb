class CreateExperiences < ActiveRecord::Migration[5.1]
  def change
    create_table :experiences do |t|
      t.references :person, foreign_key: true
      t.string :experience_name

      t.timestamps
    end
  end
end
