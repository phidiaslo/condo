class AddPropertyNameToUnits < ActiveRecord::Migration
  def change
    add_column :units, :property_name, :string
  end
end
