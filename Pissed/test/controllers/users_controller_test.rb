require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { admin: @user.admin, email: @user.email, flags: @user.flags, geofence: @user.geofence, geofence_ver: @user.geofence_ver, nick_name: @user.nick_name, password: @user.password, superadmin: @user.superadmin, suspended: @user.suspended } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { admin: @user.admin, email: @user.email, flags: @user.flags, geofence: @user.geofence, geofence_ver: @user.geofence_ver, nick_name: @user.nick_name, password: @user.password, superadmin: @user.superadmin, suspended: @user.suspended } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
