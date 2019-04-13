require 'test_helper'

class FileAttachmentDumpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @file_attachment_dump = file_attachment_dumps(:one)
  end

  test "should get index" do
    get file_attachment_dumps_url
    assert_response :success
  end

  test "should get new" do
    get new_file_attachment_dump_url
    assert_response :success
  end

  test "should create file_attachment_dump" do
    assert_difference('FileAttachmentDump.count') do
      post file_attachment_dumps_url, params: { file_attachment_dump: { url: @file_attachment_dump.url } }
    end

    assert_redirected_to file_attachment_dump_url(FileAttachmentDump.last)
  end

  test "should show file_attachment_dump" do
    get file_attachment_dump_url(@file_attachment_dump)
    assert_response :success
  end

  test "should get edit" do
    get edit_file_attachment_dump_url(@file_attachment_dump)
    assert_response :success
  end

  test "should update file_attachment_dump" do
    patch file_attachment_dump_url(@file_attachment_dump), params: { file_attachment_dump: { url: @file_attachment_dump.url } }
    assert_redirected_to file_attachment_dump_url(@file_attachment_dump)
  end

  test "should destroy file_attachment_dump" do
    assert_difference('FileAttachmentDump.count', -1) do
      delete file_attachment_dump_url(@file_attachment_dump)
    end

    assert_redirected_to file_attachment_dumps_url
  end
end
