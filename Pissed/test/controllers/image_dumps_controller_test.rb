require 'test_helper'

class ImageDumpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @image_dump = image_dumps(:one)
  end

  test "should get index" do
    get image_dumps_url
    assert_response :success
  end

  test "should get new" do
    get new_image_dump_url
    assert_response :success
  end

  test "should create image_dump" do
    assert_difference('ImageDump.count') do
      post image_dumps_url, params: { image_dump: { url: @image_dump.url } }
    end

    assert_redirected_to image_dump_url(ImageDump.last)
  end

  test "should show image_dump" do
    get image_dump_url(@image_dump)
    assert_response :success
  end

  test "should get edit" do
    get edit_image_dump_url(@image_dump)
    assert_response :success
  end

  test "should update image_dump" do
    patch image_dump_url(@image_dump), params: { image_dump: { url: @image_dump.url } }
    assert_redirected_to image_dump_url(@image_dump)
  end

  test "should destroy image_dump" do
    assert_difference('ImageDump.count', -1) do
      delete image_dump_url(@image_dump)
    end

    assert_redirected_to image_dumps_url
  end
end
