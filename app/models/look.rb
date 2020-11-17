class Look < ApplicationRecord
  has_many :product_looks
  has_many :products, through: :product_looks
end
