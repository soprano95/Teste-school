class CreateTrainings < ActiveRecord::Migration[5.1]
  def change
    create_table :trainings do |t|
      t.references :person, foreign_key: true
      t.string :training_name

      t.timestamps
    end
  end
end
