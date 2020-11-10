class Look < ApplicationRecord
  belongs_to :user
  has_many :product_looks
  belongs_to :user
end
