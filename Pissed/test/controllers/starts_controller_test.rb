require 'test_helper'

class StartsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get starts_new_url
    assert_response :success
  end

end
