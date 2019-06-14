require "application_system_test_case"

class FileAttachmentDumpsTest < ApplicationSystemTestCase
  setup do
    @file_attachment_dump = file_attachment_dumps(:one)
  end

  test "visiting the index" do
    visit file_attachment_dumps_url
    assert_selector "h1", text: "File Attachment Dumps"
  end

  test "creating a File attachment dump" do
    visit file_attachment_dumps_url
    click_on "New File Attachment Dump"

    fill_in "Url", with: @file_attachment_dump.url
    click_on "Create File attachment dump"

    assert_text "File attachment dump was successfully created"
    click_on "Back"
  end

  test "updating a File attachment dump" do
    visit file_attachment_dumps_url
    click_on "Edit", match: :first

    fill_in "Url", with: @file_attachment_dump.url
    click_on "Update File attachment dump"

    assert_text "File attachment dump was successfully updated"
    click_on "Back"
  end

  test "destroying a File attachment dump" do
    visit file_attachment_dumps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "File attachment dump was successfully destroyed"
  end
end
