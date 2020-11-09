class LooksController < ApplicationController
  before_action :set_look, only: [:show, :update, :destroy]

  # GET /looks
  def index
    @looks = Look.all

    render json: @looks
  end

  # GET /looks/1
  def show
    render json: @look
  end

  # POST /looks
  def create
    @look = Look.new(look_params)

    if @look.save
      render json: @look, status: :created, location: @look
    else
      render json: @look.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /looks/1
  def update
    if @look.update(look_params)
      render json: @look
    else
      render json: @look.errors, status: :unprocessable_entity
    end
  end

  # DELETE /looks/1
  def destroy
    @look.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_look
      @look = Look.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def look_params
      params.require(:look).permit(:title, :note, :date, :user_id)
    end
end
