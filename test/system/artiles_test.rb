require "application_system_test_case"

class ArtilesTest < ApplicationSystemTestCase
  setup do
    @artile = artiles(:one)
  end

  test "visiting the index" do
    visit artiles_url
    assert_selector "h1", text: "Artiles"
  end

  test "creating a Artile" do
    visit artiles_url
    click_on "New Artile"

    fill_in "Title", with: @artile.title
    click_on "Create Artile"

    assert_text "Artile was successfully created"
    click_on "Back"
  end

  test "updating a Artile" do
    visit artiles_url
    click_on "Edit", match: :first

    fill_in "Title", with: @artile.title
    click_on "Update Artile"

    assert_text "Artile was successfully updated"
    click_on "Back"
  end

  test "destroying a Artile" do
    visit artiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Artile was successfully destroyed"
  end
end
