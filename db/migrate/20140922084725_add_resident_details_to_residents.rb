class AddResidentDetailsToResidents < ActiveRecord::Migration
  def change
    add_column :residents, :name, :string
    add_column :residents, :ic_no, :string
    add_column :residents, :gender, :string
    add_column :residents, :birthday, :date
    add_column :residents, :marital_status, :string
    add_column :residents, :profession, :string
    add_column :residents, :property_name, :string
    add_column :residents, :lot_no, :string
    add_column :residents, :mobile_no, :string
    add_column :residents, :emergency_no, :string
    add_column :residents, :resident_type, :string
  end
end
