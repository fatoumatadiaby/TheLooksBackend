# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.create(category: "Bikini", product_name: "Cheryl Metallic Sliding Triangle Bikini", price: "64.00", store: "Everything But Water", Url: "https://www.everythingbutwater.com/products/becca-by-rebecca-virtue/south-pacific-print/453017/cheryl-metallic-sliding-triangle-bikini-top/99866")
Product.create(category: "Bikini", product_name: "Sadie Metallic One Shoulder Swimsuit", price: "138.00", store: "Everything But Water", Url: "https://www.everythingbutwater.com/products/becca-by-rebecca-virtue/south-pacific-print/451017/sadie-metallic-one-shoulder-swimsuit/99874")
Product.create(category: "Bikini",  product_name: "Show & Tell Plunge One Piece Swimsuit", price: "118.00", store: "Everything But Water", Url: "https://www.everythingbutwater.com/products/becca-by-rebecca-virtue/reveal/551017/show--tell-plunge-one-piece-swimsuit/99586")

Product.create(category: "Coverups",  product_name: "Sheer Open Front Kimono", price: "144.00", store: "Everything But Water", Url: "https://www.everythingbutwater.com/products/luli-fama/costa-del-sol/l589n76/sheer-open-front-kimono/86959")
Product.create(category: "Coverups",  product_name: "Fringe Crochet Tunic", price: "68.00", store: "Everything But Water", Url: "https://www.everythingbutwater.com/products/allison-new-york/wovens/sar19611c/fringe-crochet-tunic/96153")
Product.create(category: "Coverups",  product_name: "EBW X Vitamin A Shirt Dress", price: "120.00", store: "Everything But Water", Url: "https://www.everythingbutwater.com/products/vitamin-a/eco-linen/9lsegw/ebw-x-vitamin-a-shirt-dress/91852")

Product.create(category: "Footwear", product_name: "Santos Naked Sandals", price: "129.00", store: "Everything But Water", Url: "https://www.everythingbutwater.com/products/kaanas/footwear/c00027r/santos-naked-sandals/98698")
Product.create(category: "Footwear",  product_name: "Candys Line Cork Flip Flops", price: "50.00", store: "Everything But Water", Url: "https://www.everythingbutwater.com/products/asportuguesas/footwear/p018049000/candys-line-cork-flip-flops/98216")
Product.create(category: "Footwear",  product_name: "Salon Slide Sandals", price: "308.00", store: "Everything But Water", Url: "https://www.everythingbutwater.com/products/carrie-forbes/footwear/salon/salon-slide-sandals/81290")

ProductLook.create(look_id: 1, product_id:1)
ProductLook.create(look_id: 1, product_id:5)
ProductLook.create(look_id: 1, product_id:8)

Look.create(title: "Summer Look", note: "this look is for Fatima", date: "November 17, 2020" )
Look.create(title: "Beach Look", note: "this look is for David", date: "November 16, 2020" )