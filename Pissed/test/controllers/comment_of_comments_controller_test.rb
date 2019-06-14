require 'test_helper'

class CommentOfCommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comment_of_comment = comment_of_comments(:one)
  end

  test "should get index" do
    get comment_of_comments_url
    assert_response :success
  end

  test "should get new" do
    get new_comment_of_comment_url
    assert_response :success
  end

  test "should create comment_of_comment" do
    assert_difference('CommentOfComment.count') do
      post comment_of_comments_url, params: { comment_of_comment: { body: @comment_of_comment.body } }
    end

    assert_redirected_to comment_of_comment_url(CommentOfComment.last)
  end

  test "should show comment_of_comment" do
    get comment_of_comment_url(@comment_of_comment)
    assert_response :success
  end

  test "should get edit" do
    get edit_comment_of_comment_url(@comment_of_comment)
    assert_response :success
  end

  test "should update comment_of_comment" do
    patch comment_of_comment_url(@comment_of_comment), params: { comment_of_comment: { body: @comment_of_comment.body } }
    assert_redirected_to comment_of_comment_url(@comment_of_comment)
  end

  test "should destroy comment_of_comment" do
    assert_difference('CommentOfComment.count', -1) do
      delete comment_of_comment_url(@comment_of_comment)
    end

    assert_redirected_to comment_of_comments_url
  end
end
