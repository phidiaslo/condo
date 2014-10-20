class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.string :inv_no
      t.date :inv_date
      t.date :due_date
      t.string :lot_no
      t.string :recipient
      t.text :address
      t.text :description
      t.decimal :amount

      t.timestamps
    end
  end
end
