require 'test_helper'

class InappropietesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inappropiete = inappropietes(:one)
  end

  test "should get index" do
    get inappropietes_url
    assert_response :success
  end

  test "should get new" do
    get new_inappropiete_url
    assert_response :success
  end

  test "should create inappropiete" do
    assert_difference('Inappropiete.count') do
      post inappropietes_url, params: { inappropiete: { flag: @inappropiete.flag, justification: @inappropiete.justification } }
    end

    assert_redirected_to inappropiete_url(Inappropiete.last)
  end

  test "should show inappropiete" do
    get inappropiete_url(@inappropiete)
    assert_response :success
  end

  test "should get edit" do
    get edit_inappropiete_url(@inappropiete)
    assert_response :success
  end

  test "should update inappropiete" do
    patch inappropiete_url(@inappropiete), params: { inappropiete: { flag: @inappropiete.flag, justification: @inappropiete.justification } }
    assert_redirected_to inappropiete_url(@inappropiete)
  end

  test "should destroy inappropiete" do
    assert_difference('Inappropiete.count', -1) do
      delete inappropiete_url(@inappropiete)
    end

    assert_redirected_to inappropietes_url
  end
end
