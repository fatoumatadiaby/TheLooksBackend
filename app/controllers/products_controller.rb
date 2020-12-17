class ProductsController < ApplicationController
  before_action :set_look, except: [:destroy]

  # GET /products
  def index
    @products = Product.all

    render json: @products
  end

  # GET /products/1
  def show
        @product = Product.find(params[:id])

    render json: @product
  end

  # POST /products
  def create
    # binding.pry
    @product = @look.products.new(product_params)

    if @product.save
      @product_looks = @product.product_looks.new(look_id: @look.id, product_id: @product.id)
      @product_looks.save
      render json: @look 
    else
      render json: {error: "cant create look"}
    end
  end

  # PATCH/PUT /products/1
  # def update
  #   if @product.update(product_params)
  #   render json: product, status: :accepted
  #   else
  #     render json: {errors: product.errors.full_messages}, status: :unprocessable_entity
  #   end
  # end

  # # DELETE /products/1
  # def destroy
  #   @product.destroy
  #   render json: ProductSerializer.new(product)
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_look
      @look = Look.find(params[:look_id])
    end

    # Only allow a trusted parameter "white list" through.
    def product_params
      params.require(:product).permit(:category, :product_name, :store, :url)
    end
end
