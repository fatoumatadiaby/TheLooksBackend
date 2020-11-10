class ProductLookSerializer
  include FastJsonapi::ObjectSerializer
   belongs_to :product
   belongs_to :look
end
