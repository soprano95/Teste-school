class CreateCycles < ActiveRecord::Migration[5.1]
  def change
    create_table :cycles do |t|
      t.string :cycle_name

      t.timestamps
    end
  end
end
