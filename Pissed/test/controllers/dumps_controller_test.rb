require 'test_helper'

class DumpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dump = dumps(:one)
  end

  test "should get index" do
    get dumps_url
    assert_response :success
  end

  test "should get new" do
    get new_dump_url
    assert_response :success
  end

  test "should create dump" do
    assert_difference('Dump.count') do
      post dumps_url, params: { dump: { author: @dump.author, body: @dump.body, title: @dump.title } }
    end

    assert_redirected_to dump_url(Dump.last)
  end

  test "should show dump" do
    get dump_url(@dump)
    assert_response :success
  end

  test "should get edit" do
    get edit_dump_url(@dump)
    assert_response :success
  end

  test "should update dump" do
    patch dump_url(@dump), params: { dump: { author: @dump.author, body: @dump.body, title: @dump.title } }
    assert_redirected_to dump_url(@dump)
  end

  test "should destroy dump" do
    assert_difference('Dump.count', -1) do
      delete dump_url(@dump)
    end

    assert_redirected_to dumps_url
  end
end
