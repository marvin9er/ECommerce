require "application_system_test_case"

class ArmorOrdersTest < ApplicationSystemTestCase
  setup do
    @armor_order = armor_orders(:one)
  end

  test "visiting the index" do
    visit armor_orders_url
    assert_selector "h1", text: "Armor Orders"
  end

  test "creating a Armor order" do
    visit armor_orders_url
    click_on "New Armor Order"

    fill_in "Armor", with: @armor_order.armor_id
    fill_in "Order", with: @armor_order.order_id
    fill_in "Price", with: @armor_order.price
    click_on "Create Armor order"

    assert_text "Armor order was successfully created"
    click_on "Back"
  end

  test "updating a Armor order" do
    visit armor_orders_url
    click_on "Edit", match: :first

    fill_in "Armor", with: @armor_order.armor_id
    fill_in "Order", with: @armor_order.order_id
    fill_in "Price", with: @armor_order.price
    click_on "Update Armor order"

    assert_text "Armor order was successfully updated"
    click_on "Back"
  end

  test "destroying a Armor order" do
    visit armor_orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Armor order was successfully destroyed"
  end
end
