class AddDetailsToInvoices < ActiveRecord::Migration
  def change
    add_column :invoices, :property_name, :string
    add_column :invoices, :status, :string
  end
end
