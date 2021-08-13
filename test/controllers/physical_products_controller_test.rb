require 'test_helper'

class PhysicalProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @physical_product = physical_products(:one)
  end

  test "should get index" do
    get physical_products_url
    assert_response :success
  end

  test "should get new" do
    get new_physical_product_url
    assert_response :success
  end

  test "should create physical_product" do
    assert_difference('PhysicalProduct.count') do
      post physical_products_url, params: { physical_product: { product_id: @physical_product.product_id } }
    end

    assert_redirected_to physical_product_url(PhysicalProduct.last)
  end

  test "should show physical_product" do
    get physical_product_url(@physical_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_physical_product_url(@physical_product)
    assert_response :success
  end

  test "should update physical_product" do
    patch physical_product_url(@physical_product), params: { physical_product: { product_id: @physical_product.product_id } }
    assert_redirected_to physical_product_url(@physical_product)
  end

  test "should destroy physical_product" do
    assert_difference('PhysicalProduct.count', -1) do
      delete physical_product_url(@physical_product)
    end

    assert_redirected_to physical_products_url
  end
end
