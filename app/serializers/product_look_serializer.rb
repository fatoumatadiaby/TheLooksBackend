class ProductLookSerializer < ActiveModel::Serializer
   attributes :look_id, :product_id
   belongs_to :product
   belongs_to :look
end