require 'test_helper'

class DigitalProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @digital_product = digital_products(:one)
  end

  test "should get index" do
    get digital_products_url
    assert_response :success
  end

  test "should get new" do
    get new_digital_product_url
    assert_response :success
  end

  test "should create digital_product" do
    assert_difference('DigitalProduct.count') do
      post digital_products_url, params: { digital_product: { product_id: @digital_product.product_id } }
    end

    assert_redirected_to digital_product_url(DigitalProduct.last)
  end

  test "should show digital_product" do
    get digital_product_url(@digital_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_digital_product_url(@digital_product)
    assert_response :success
  end

  test "should update digital_product" do
    patch digital_product_url(@digital_product), params: { digital_product: { product_id: @digital_product.product_id } }
    assert_redirected_to digital_product_url(@digital_product)
  end

  test "should destroy digital_product" do
    assert_difference('DigitalProduct.count', -1) do
      delete digital_product_url(@digital_product)
    end

    assert_redirected_to digital_products_url
  end
end
