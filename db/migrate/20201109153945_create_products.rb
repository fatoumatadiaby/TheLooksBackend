class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :category
      t.string :product_name
      t.integer :price
      t.string :store
      t.string :Url

      t.timestamps
    end
  end
end
