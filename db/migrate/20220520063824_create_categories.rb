class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.integer :cid
      t.string :cname

      t.timestamps
    end
  end
end
