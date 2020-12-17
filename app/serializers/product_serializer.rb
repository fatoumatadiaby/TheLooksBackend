class ProductSerializer < ActiveModel::Serializer

  attributes :id, :category, :product_name, :store, :url
  has_many :product_looks
  # has_many :looks, through: :product_looks

end