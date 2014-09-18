class CreateBulletins < ActiveRecord::Migration
  def change
    create_table :bulletins do |t|
      t.string :post_to
      t.string :subject_title
      t.text :content

      t.timestamps
    end
  end
end
