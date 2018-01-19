class CreateLeisureTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :leisure_types do |t|
      t.string :leisure_type_name

      t.timestamps
    end
  end
end
