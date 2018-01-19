class CreateLeisures < ActiveRecord::Migration[5.1]
  def change
    create_table :leisures do |t|
      t.references :person, foreign_key: true
      t.references :leisure_type, foreign_key: true
      t.string :leisure_name

      t.timestamps
    end
  end
end
