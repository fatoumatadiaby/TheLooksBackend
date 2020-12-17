class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :category
      t.string :product_name
      t.float :price
      t.string :store
      t.string :url
      # t.references :look, foreign_key: true

      t.timestamps
    end
  end
end
