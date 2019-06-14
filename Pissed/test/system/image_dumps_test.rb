require "application_system_test_case"

class ImageDumpsTest < ApplicationSystemTestCase
  setup do
    @image_dump = image_dumps(:one)
  end

  test "visiting the index" do
    visit image_dumps_url
    assert_selector "h1", text: "Image Dumps"
  end

  test "creating a Image dump" do
    visit image_dumps_url
    click_on "New Image Dump"

    fill_in "Url", with: @image_dump.url
    click_on "Create Image dump"

    assert_text "Image dump was successfully created"
    click_on "Back"
  end

  test "updating a Image dump" do
    visit image_dumps_url
    click_on "Edit", match: :first

    fill_in "Url", with: @image_dump.url
    click_on "Update Image dump"

    assert_text "Image dump was successfully updated"
    click_on "Back"
  end

  test "destroying a Image dump" do
    visit image_dumps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Image dump was successfully destroyed"
  end
end
