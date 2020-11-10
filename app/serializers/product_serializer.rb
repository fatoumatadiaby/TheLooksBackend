class ProductSerializer
  include FastJsonapi::ObjectSerializer
  attributes :category, :product_name, :price, :store, :url
  has_many :product_looks
end
