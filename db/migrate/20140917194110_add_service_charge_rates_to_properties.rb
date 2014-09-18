class AddServiceChargeRatesToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :sc_rate, :decimal, :precision => 10, :scale => 2
    add_column :properties, :sinking_rate, :decimal,  :precision => 10, :scale => 2
  end
end
