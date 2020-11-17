class Look < ApplicationRecord
  # belongs_to :user
  has_many :product_looks
  has_many :products, through: :product_looks
end
