require "application_system_test_case"

class IsitsTest < ApplicationSystemTestCase
  setup do
    @isit = isits(:one)
  end

  test "visiting the index" do
    visit isits_url
    assert_selector "h1", text: "Isits"
  end

  test "creating a Isit" do
    visit isits_url
    click_on "New Isit"

    fill_in "Name", with: @isit.name
    click_on "Create Isit"

    assert_text "Isit was successfully created"
    click_on "Back"
  end

  test "updating a Isit" do
    visit isits_url
    click_on "Edit", match: :first

    fill_in "Name", with: @isit.name
    click_on "Update Isit"

    assert_text "Isit was successfully updated"
    click_on "Back"
  end

  test "destroying a Isit" do
    visit isits_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Isit was successfully destroyed"
  end
end
