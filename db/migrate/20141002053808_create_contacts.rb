class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :contact_no
      t.string :importance
      t.text :address

      t.timestamps
    end
  end
end
