class Product < ApplicationRecord
    has_many :product_looks
     has_many :looks, through: :product_looks

end
