class CreateFaqs < ActiveRecord::Migration
  def change
    create_table :faqs do |t|
      t.string :property_name
      t.string :question
      t.text :answer

      t.timestamps
    end
  end
end
