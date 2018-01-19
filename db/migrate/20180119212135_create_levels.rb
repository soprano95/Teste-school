class CreateLevels < ActiveRecord::Migration[5.1]
  def change
    create_table :levels do |t|
      t.references :cycle, foreign_key: true
      t.string :level_name

      t.timestamps
    end
  end
end
