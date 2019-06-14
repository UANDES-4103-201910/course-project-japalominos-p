require "application_system_test_case"

class InappropietesTest < ApplicationSystemTestCase
  setup do
    @inappropiete = inappropietes(:one)
  end

  test "visiting the index" do
    visit inappropietes_url
    assert_selector "h1", text: "Inappropietes"
  end

  test "creating a Inappropiete" do
    visit inappropietes_url
    click_on "New Inappropiete"

    check "Flag" if @inappropiete.flag
    fill_in "Justification", with: @inappropiete.justification
    click_on "Create Inappropiete"

    assert_text "Inappropiete was successfully created"
    click_on "Back"
  end

  test "updating a Inappropiete" do
    visit inappropietes_url
    click_on "Edit", match: :first

    check "Flag" if @inappropiete.flag
    fill_in "Justification", with: @inappropiete.justification
    click_on "Update Inappropiete"

    assert_text "Inappropiete was successfully updated"
    click_on "Back"
  end

  test "destroying a Inappropiete" do
    visit inappropietes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Inappropiete was successfully destroyed"
  end
end
