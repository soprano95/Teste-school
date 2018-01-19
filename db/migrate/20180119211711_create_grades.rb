class CreateGrades < ActiveRecord::Migration[5.1]
  def change
    create_table :grades do |t|
      t.string :grade_name
      t.string :grade_description

      t.timestamps
    end
  end
end
