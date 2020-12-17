class LookSerializer < ActiveModel::Serializer
  attributes :id, :title, :note
  has_many :product_looks
  has_many :products, through: :product_looks

end
