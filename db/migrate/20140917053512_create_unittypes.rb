class CreateUnittypes < ActiveRecord::Migration
  def change
    create_table :unittypes do |t|
      t.string :name
      t.integer :sqft
      t.string :property_name

      t.timestamps
    end
  end
end
