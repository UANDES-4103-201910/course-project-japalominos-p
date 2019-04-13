require "application_system_test_case"

class DumpsTest < ApplicationSystemTestCase
  setup do
    @dump = dumps(:one)
  end

  test "visiting the index" do
    visit dumps_url
    assert_selector "h1", text: "Dumps"
  end

  test "creating a Dump" do
    visit dumps_url
    click_on "New Dump"

    fill_in "Author", with: @dump.author
    fill_in "Body", with: @dump.body
    fill_in "Title", with: @dump.title
    click_on "Create Dump"

    assert_text "Dump was successfully created"
    click_on "Back"
  end

  test "updating a Dump" do
    visit dumps_url
    click_on "Edit", match: :first

    fill_in "Author", with: @dump.author
    fill_in "Body", with: @dump.body
    fill_in "Title", with: @dump.title
    click_on "Update Dump"

    assert_text "Dump was successfully updated"
    click_on "Back"
  end

  test "destroying a Dump" do
    visit dumps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dump was successfully destroyed"
  end
end
