class CreateAreasSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :areas_skills do |t|
      t.string :areas_skill_name

      t.timestamps
    end
  end
end
