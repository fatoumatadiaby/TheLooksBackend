class ProductSerializer
  include FastJsonapi::ObjectSerializer
  attributes :category, :product_name, :price, :store, :Url
  has_many :product_looks
  has_many :looks, through: :product_looks

end
