require "application_system_test_case"

class BoosTest < ApplicationSystemTestCase
  setup do
    @boo = boos(:one)
  end

  test "visiting the index" do
    visit boos_url
    assert_selector "h1", text: "Boos"
  end

  test "creating a Boo" do
    visit boos_url
    click_on "New Boo"

    fill_in "Category", with: @boo.category
    fill_in "Title", with: @boo.title
    click_on "Create Boo"

    assert_text "Boo was successfully created"
    click_on "Back"
  end

  test "updating a Boo" do
    visit boos_url
    click_on "Edit", match: :first

    fill_in "Category", with: @boo.category
    fill_in "Title", with: @boo.title
    click_on "Update Boo"

    assert_text "Boo was successfully updated"
    click_on "Back"
  end

  test "destroying a Boo" do
    visit boos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Boo was successfully destroyed"
  end
end
