class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|

      t.string :name, null:false
      t.integer :brand_id, null:false
      t.integer :category_id, null:false
      t.string :price, null:false

      t.timestamps

      # add_foreign_key :books
    end
  end
end
