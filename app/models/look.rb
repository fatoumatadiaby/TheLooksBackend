class Look < ApplicationRecord
  has_many :product_looks, dependent: :destroy
  has_many :products, through: :product_looks
end
