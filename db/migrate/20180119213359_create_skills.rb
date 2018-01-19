class CreateSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :skills do |t|
      t.references :person, foreign_key: true
      t.references :areas_skill, foreign_key: true
      t.string :skill_name

      t.timestamps
    end
  end
end
