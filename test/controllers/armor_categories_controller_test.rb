require "test_helper"

class ArmorCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @armor_category = armor_categories(:one)
  end

  test "should get index" do
    get armor_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_armor_category_url
    assert_response :success
  end

  test "should create armor_category" do
    assert_difference('ArmorCategory.count') do
      post armor_categories_url, params: { armor_category: { categoryId: @armor_category.categoryId, name: @armor_category.name } }
    end

    assert_redirected_to armor_category_url(ArmorCategory.last)
  end

  test "should show armor_category" do
    get armor_category_url(@armor_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_armor_category_url(@armor_category)
    assert_response :success
  end

  test "should update armor_category" do
    patch armor_category_url(@armor_category), params: { armor_category: { categoryId: @armor_category.categoryId, name: @armor_category.name } }
    assert_redirected_to armor_category_url(@armor_category)
  end

  test "should destroy armor_category" do
    assert_difference('ArmorCategory.count', -1) do
      delete armor_category_url(@armor_category)
    end

    assert_redirected_to armor_categories_url
  end
end
