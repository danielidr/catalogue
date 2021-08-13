require "application_system_test_case"

class PhysicalProductsTest < ApplicationSystemTestCase
  setup do
    @physical_product = physical_products(:one)
  end

  test "visiting the index" do
    visit physical_products_url
    assert_selector "h1", text: "Physical Products"
  end

  test "creating a Physical product" do
    visit physical_products_url
    click_on "New Physical Product"

    fill_in "Product", with: @physical_product.product_id
    click_on "Create Physical product"

    assert_text "Physical product was successfully created"
    click_on "Back"
  end

  test "updating a Physical product" do
    visit physical_products_url
    click_on "Edit", match: :first

    fill_in "Product", with: @physical_product.product_id
    click_on "Update Physical product"

    assert_text "Physical product was successfully updated"
    click_on "Back"
  end

  test "destroying a Physical product" do
    visit physical_products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Physical product was successfully destroyed"
  end
end
