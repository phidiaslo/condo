class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :lot_no
      t.string :unit_type
      t.string :water_meter

      t.timestamps
    end
  end
end
