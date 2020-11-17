class LookSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :note, :date
  has_many :product_looks
  has_many :products, through: :product_looks

end
