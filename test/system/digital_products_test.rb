require "application_system_test_case"

class DigitalProductsTest < ApplicationSystemTestCase
  setup do
    @digital_product = digital_products(:one)
  end

  test "visiting the index" do
    visit digital_products_url
    assert_selector "h1", text: "Digital Products"
  end

  test "creating a Digital product" do
    visit digital_products_url
    click_on "New Digital Product"

    fill_in "Product", with: @digital_product.product_id
    click_on "Create Digital product"

    assert_text "Digital product was successfully created"
    click_on "Back"
  end

  test "updating a Digital product" do
    visit digital_products_url
    click_on "Edit", match: :first

    fill_in "Product", with: @digital_product.product_id
    click_on "Update Digital product"

    assert_text "Digital product was successfully updated"
    click_on "Back"
  end

  test "destroying a Digital product" do
    visit digital_products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Digital product was successfully destroyed"
  end
end
