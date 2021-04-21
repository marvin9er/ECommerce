require "application_system_test_case"

class ArmorCategoriesTest < ApplicationSystemTestCase
  setup do
    @armor_category = armor_categories(:one)
  end

  test "visiting the index" do
    visit armor_categories_url
    assert_selector "h1", text: "Armor Categories"
  end

  test "creating a Armor category" do
    visit armor_categories_url
    click_on "New Armor Category"

    fill_in "Categoryid", with: @armor_category.categoryId
    fill_in "Name", with: @armor_category.name
    click_on "Create Armor category"

    assert_text "Armor category was successfully created"
    click_on "Back"
  end

  test "updating a Armor category" do
    visit armor_categories_url
    click_on "Edit", match: :first

    fill_in "Categoryid", with: @armor_category.categoryId
    fill_in "Name", with: @armor_category.name
    click_on "Update Armor category"

    assert_text "Armor category was successfully updated"
    click_on "Back"
  end

  test "destroying a Armor category" do
    visit armor_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Armor category was successfully destroyed"
  end
end
