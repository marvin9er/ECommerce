require "application_system_test_case"

class ArmorsTest < ApplicationSystemTestCase
  setup do
    @armor = armors(:one)
  end

  test "visiting the index" do
    visit armors_url
    assert_selector "h1", text: "Armors"
  end

  test "creating a Armor" do
    visit armors_url
    click_on "New Armor"

    fill_in "Armor", with: @armor.armor
    fill_in "Armorcategory", with: @armor.armorCategory
    fill_in "Concealment", with: @armor.concealment
    fill_in "Description", with: @armor.description
    fill_in "Dodge", with: @armor.dodge
    fill_in "Speed", with: @armor.speed
    fill_in "Stamina", with: @armor.stamina
    fill_in "Steadiness", with: @armor.steadiness
    click_on "Create Armor"

    assert_text "Armor was successfully created"
    click_on "Back"
  end

  test "updating a Armor" do
    visit armors_url
    click_on "Edit", match: :first

    fill_in "Armor", with: @armor.armor
    fill_in "Armorcategory", with: @armor.armorCategory
    fill_in "Concealment", with: @armor.concealment
    fill_in "Description", with: @armor.description
    fill_in "Dodge", with: @armor.dodge
    fill_in "Speed", with: @armor.speed
    fill_in "Stamina", with: @armor.stamina
    fill_in "Steadiness", with: @armor.steadiness
    click_on "Update Armor"

    assert_text "Armor was successfully updated"
    click_on "Back"
  end

  test "destroying a Armor" do
    visit armors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Armor was successfully destroyed"
  end
end
