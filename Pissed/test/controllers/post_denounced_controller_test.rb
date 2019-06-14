require 'test_helper'

class PostDenouncedControllerTest < ActionDispatch::IntegrationTest
  test "should get Index" do
    get post_denounced_Index_url
    assert_response :success
  end

end
