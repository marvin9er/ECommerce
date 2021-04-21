require "test_helper"

class ArmorOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @armor_order = armor_orders(:one)
  end

  test "should get index" do
    get armor_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_armor_order_url
    assert_response :success
  end

  test "should create armor_order" do
    assert_difference('ArmorOrder.count') do
      post armor_orders_url, params: { armor_order: { armor_id: @armor_order.armor_id, order_id: @armor_order.order_id, price: @armor_order.price } }
    end

    assert_redirected_to armor_order_url(ArmorOrder.last)
  end

  test "should show armor_order" do
    get armor_order_url(@armor_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_armor_order_url(@armor_order)
    assert_response :success
  end

  test "should update armor_order" do
    patch armor_order_url(@armor_order), params: { armor_order: { armor_id: @armor_order.armor_id, order_id: @armor_order.order_id, price: @armor_order.price } }
    assert_redirected_to armor_order_url(@armor_order)
  end

  test "should destroy armor_order" do
    assert_difference('ArmorOrder.count', -1) do
      delete armor_order_url(@armor_order)
    end

    assert_redirected_to armor_orders_url
  end
end
