class ProductLooksController < ApplicationController
  before_action :set_product_look, only: [:show, :update, :destroy]

  # GET /product_looks
  def index
    @product_looks = ProductLook.all

    render json: @product_looks
  end

  # GET /product_looks/1
  def show
    render json: @product_look
  end

  # POST /product_looks
  def create
    @product_look = ProductLook.new(product_look_params)

    if @product_look.save
      render json: @product_look, status: :created, location: @product_look
    else
      render json: @product_look.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /product_looks/1
  def update
    if @product_look.update(product_look_params)
      render json: @product_look
    else
      render json: @product_look.errors, status: :unprocessable_entity
    end
  end

  # DELETE /product_looks/1
  def destroy
    @product_look.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_look
      @product_look = ProductLook.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def product_look_params
      params.require(:product_look).permit(:product_id, :look_id)
    end
end
