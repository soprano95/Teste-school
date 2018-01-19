class CreateEthnics < ActiveRecord::Migration[5.1]
  def change
    create_table :ethnics do |t|
      t.string :ethnic_name

      t.timestamps
    end
  end
end
