require 'test_helper'

class ProductLooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_look = product_looks(:one)
  end

  test "should get index" do
    get product_looks_url, as: :json
    assert_response :success
  end

  test "should create product_look" do
    assert_difference('ProductLook.count') do
      post product_looks_url, params: { product_look: { look_id: @product_look.look_id, product_id: @product_look.product_id } }, as: :json
    end

    assert_response 201
  end

  test "should show product_look" do
    get product_look_url(@product_look), as: :json
    assert_response :success
  end

  test "should update product_look" do
    patch product_look_url(@product_look), params: { product_look: { look_id: @product_look.look_id, product_id: @product_look.product_id } }, as: :json
    assert_response 200
  end

  test "should destroy product_look" do
    assert_difference('ProductLook.count', -1) do
      delete product_look_url(@product_look), as: :json
    end

    assert_response 204
  end
end
