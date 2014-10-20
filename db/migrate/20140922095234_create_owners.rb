class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :name
      t.string :ic_no
      t.string :email
      t.string :mobile_no
      t.string :emergency_no
      t.text :address
      t.string :property_name
      t.string :lot_no
      t.string :ref_no

      t.timestamps
    end
  end
end
