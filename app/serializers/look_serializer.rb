class LookSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :notes, :date
  has_many :product_looks
  # has_many :products through :product_looks

end
