class CreateProductLooks < ActiveRecord::Migration[5.2]
  def change
    create_table :product_looks do |t|
      t.references :product, foreign_key: true
      t.references :look, foreign_key: true

      t.timestamps
    end
  end
end
